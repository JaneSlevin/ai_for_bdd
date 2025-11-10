Feature: Access to Company Performance Data

  Scenario: Executive retrieves sales performance data
    Given the executive is logged into the company dashboard
    When the executive navigates to the "Sales Performance" section
    Then the executive should see total sales figures for the current quarter
    And the executive should see a comparison of sales figures to the previous quarter

  Scenario: Executive reviews employee performance metrics
    Given the executive is logged into the company dashboard
    When the executive navigates to the "Employee Performance" section
    Then the executive should see average employee performance ratings
    And the executive should see a breakdown of performance by department

  Scenario: Executive analyzes customer satisfaction scores
    Given the executive is logged into the company dashboard
    When the executive navigates to the "Customer Satisfaction" section
    Then the executive should see the latest customer satisfaction scores
    And the executive should see trends in customer satisfaction over the past year

  Scenario: Executive generates a financial report
    Given the executive is logged into the company dashboard
    When the executive selects the "Generate Financial Report" option
    Then a financial report should be created for the latest fiscal year
    And the report should include revenue, expenses, and profit margins

  Scenario: Executive accesses data security settings
    Given the executive is logged into the company dashboard
    When the executive navigates to the "Data Security" section
    Then the executive should see the current security measures in place
    And the executive should have the option to update access permissions for data