Feature: Executive Data Access

  As an executive
  I want to have full access to data related to my company
  So that I can have a sense of my company's performance

  Scenario: Executive User Can Access All Company Data Dashboards
    Given I am logged in as an executive user with username "executive1" and password "securePassword"
    When I navigate to the "Dashboards" section
    Then I should see dashboards related to "Sales Performance", "Marketing ROI", "Operational Efficiency", and "Financial Health"
    And I should be able to access each dashboard without any permission errors

  Scenario: Executive User Can Export Data in Various Formats
    Given I am logged in as an executive user
    When I navigate to the "Sales Performance" dashboard
    And I select the "Total Revenue" data visualization
    Then I should be able to export the data as "CSV", "Excel", and "PDF"
    And the exported data should contain all available data points

  Scenario: Executive User Can Filter Data by Date Range and Region
    Given I am logged in as an executive user
    When I navigate to the "Marketing ROI" dashboard
    And I filter the data by "Date Range" from "2023-01-01" to "2023-03-31"
    And I filter the data by "Region" to "North America"
    Then the displayed data should only reflect the marketing ROI for North America between January 1st and March 31st, 2023

  Scenario: Executive User Can View Detailed Reports
    Given I am logged in as an executive user
    When I navigate to the "Financial Health" dashboard
    And I select the "Profit Margin" metric
    Then I should be able to drill down into a detailed report showing the breakdown of profit margin by department and product line

  Scenario: Executive User Can Access Data Governance Information
    Given I am logged in as an executive user
    When I navigate to the "Data Governance" section
    Then I should see information on data sources, data quality metrics, and data access policies
    And I should be able to download the data access policy document