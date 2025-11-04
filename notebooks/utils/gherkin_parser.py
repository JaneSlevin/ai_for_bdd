from gherkin.parser import Parser

import pandas as pd
from pathlib import Path

# Parse feature file, returning data or error info if parsing fails
def parse_gherkin_document(filepath):
    parser = Parser()
    result = {"filepath": str(filepath), "error": False, "data": None, "error_message": None}

    try:
        with open(filepath, 'r', encoding='utf-8') as f:
            content = f.read()
            gherkin_document = parser.parse(content)
            # print(gherkin_document)
            result["data"] = gherkin_document

    except Exception as e:
        result["error"] = True
        result["error_message"] = str(e)

    return result

# Extract step data from parsed Gherkin document
def extract_data_from_gherkin_document(gherkin_document, filepath):
    rows = []

    feature = gherkin_document.get('feature', {})
    feature_name = feature.get('name', '').strip()
    feature_description = feature.get('description', '').strip()
    feature_keyword = feature.get('keyword')
    feature_tags = [t.get('name') for t in feature.get('tags', [])]

    def extract_step_from_steps(step):       
        data_table = None
        if 'dataTable' in step and step['dataTable'] is not None:
            dt_rows = step['dataTable'].get('rows', [])
            data_table = [
                [cell.get('value') for cell in row.get('cells', [])]
                for row in dt_rows
            ]

        doc_string = None
        if 'docString' in step and step['docString'] is not None:
            doc_string = step['docString'].get('content')

        return {
            'step_keyword': step.get('keyword', '').strip(),
            'step_keyword_type': step.get('keywordType'),
            'step_text': step.get('text', '').strip(),
            'data_table': data_table,
            'doc_string': doc_string
        }

    def process_scenario(scenario, rule_name=None, rule_description=None, rule_tags=None):
        scenario_name = scenario.get('name', '').strip()
        scenario_description = scenario.get('description', '').strip()
        scenario_keyword = scenario.get('keyword')
        scenario_tags = [t.get('name') for t in scenario.get('tags', [])]
        scenario_examples = scenario.get('examples', [])

        def none_if_empty(value):
                return value if value else None
        
        filename = filepath.name.replace('.feature', '')

        for step in scenario.get('steps', []):
            step_info = extract_step_from_steps(step)

            rows.append({
                'filepath': filepath,
                'model': filename.split('_')[0],
                'app_id' : filename.split('_')[1],
                'us_id' : filename.split('_')[2],
                'feature_name': none_if_empty(feature_name),
                'feature_description': none_if_empty(feature_description),
                'feature_keyword': feature_keyword,
                'feature_tags': none_if_empty(feature_tags),
                'rule_name': rule_name,
                'rule_description': rule_description,
                'rule_tags': rule_tags,
                'scenario_name': scenario_name,
                'scenario_description': none_if_empty(scenario_description),
                'scenario_keyword': scenario_keyword,
                'scenario_tags': none_if_empty(scenario_tags),
                'scenario_examples': none_if_empty(scenario_examples),
                'step_keyword': step_info['step_keyword'],
                'step_keyword_type': step_info['step_keyword_type'],
                'step_text': none_if_empty(step_info['step_text']),
                'step_data_table': step_info['data_table'],
                'step_doc_string': step_info['doc_string'],
                'error': False
            })

    for child in feature.get('children', []):
        rule = child.get('rule')
        if rule:
            if rule_child.get('background'):
                process_scenario(rule_child['background'], rule_name, rule_description, rule_tags)

            rule_name = rule.get('name', '').strip()
            rule_description = rule.get('description', '').strip()
            rule_tags = [t.get('name') for t in rule.get('tags', [])]

            for rule_child in rule.get('children', []):
                scenario = rule_child.get('scenario')
                if scenario:
                    process_scenario(scenario, rule_name, rule_description, rule_tags)
        else:
            scenario = child.get('scenario') or child.get('background')
            if scenario:
                process_scenario(scenario)

    return rows

# Add extracted Gherkin data to df
def add_gherkins_to_df(feature_dir):
    records = []

    # for filepath in Path(feature_dir).glob("*.feature"):
    for filepath in Path(feature_dir).rglob("*.feature"):
        parsed = parse_gherkin_document(filepath)

        record = {
            "filepath": parsed["filepath"],
            "error": parsed["error"],
            "error_message": parsed.get("error_message"),
        }

        if not parsed["error"]:
            try:
                rows = extract_data_from_gherkin_document(parsed["data"], filepath)
                records.extend(rows)  
                continue  # Skip appending generic record below
            except Exception as e:
                record["error"] = True
                record["error_message"] = e

        # If parsing or extraction fails, append a simple error row
        records.append(record)

    return records


