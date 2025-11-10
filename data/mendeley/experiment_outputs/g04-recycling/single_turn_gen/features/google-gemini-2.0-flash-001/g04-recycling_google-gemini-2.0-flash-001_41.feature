Feature: View User Error Logs

  As an admin
  I want to view user error logs
  So that I can fix or review any issues that are being faced by users of the system

  Scenario: Admin successfully views error logs with default filters
    Given I am logged in as an admin
    When I navigate to the error logs page
    Then I should see a table of error logs
    And The table should display "Timestamp", "User ID", "Error Message", and "Severity" columns
    And The logs should be sorted by "Timestamp" in descending order by default

  Scenario: Admin filters error logs by user ID
    Given I am logged in as an admin
    And I am on the error logs page
    When I enter "user123" in the User ID filter
    And I click the "Apply Filters" button
    Then I should only see error logs for "user123"

  Scenario: Admin filters error logs by severity level
    Given I am logged in as an admin
    And I am on the error logs page
    When I select "Error" from the Severity filter dropdown
    And I click the "Apply Filters" button
    Then I should only see error logs with severity level "Error"

  Scenario: Admin views error log details
    Given I am logged in as an admin
    And I am on the error logs page
    When I click on a specific error log entry with message "Failed to load resource"
    Then I should see a detailed view of the error log
    And The detailed view should include "Timestamp", "User ID", "Error Message", "Severity", and "Stack Trace"

  Scenario: Admin filters error logs by date range
    Given I am logged in as an admin
    And I am on the error logs page
    When I select a start date of "2023-01-01" and an end date of "2023-01-31"
    And I click the "Apply Filters" button
    Then I should only see error logs within the date range "2023-01-01" to "2023-01-31"