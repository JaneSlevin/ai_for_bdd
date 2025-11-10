Feature: View User Error Logs

  As an admin
  I want to view user error logs
  So that I can fix or review any issues that are being faced by users of the system

  Scenario: Admin views all user error logs
    Given the admin is logged in to the system
    When the admin navigates to the error logs section
    Then the admin should see a list of all user error logs
    And each log should display the user's ID, error message, and timestamp

  Scenario: Admin filters user error logs by date range
    Given the admin is logged in to the system
    When the admin selects a date range to filter the logs
    Then the admin should see only the error logs within that date range

  Scenario: Admin searches for specific user error logs
    Given the admin is logged in to the system
    When the admin enters a user ID in the search bar
    Then the admin should see only the error logs associated with that user ID

  Scenario: Admin views details of a specific error log
    Given the admin is logged in to the system
    And the admin is viewing the list of user error logs
    When the admin clicks on a specific error log
    Then the admin should see detailed information about the selected error log

  Scenario: Admin exports user error logs to a CSV file
    Given the admin is logged in to the system
    When the admin clicks the export button
    Then a CSV file containing all user error logs should be downloaded