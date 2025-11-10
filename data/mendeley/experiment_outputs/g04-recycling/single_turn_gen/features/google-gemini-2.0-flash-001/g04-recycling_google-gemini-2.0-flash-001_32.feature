Feature: Employee Notifications

  As an employee
  I want to get quick notifications
  So that I can process cases the first time

  Scenario: New case assigned notification
    Given I am logged in as an employee
    When a new case is assigned to me
    Then I should receive a notification within 5 minutes
    And the notification should include the case ID
    And the notification should include the case subject

  Scenario: Case update notification
    Given I am logged in as an employee
    And I have a case assigned to me with ID "CASE-123"
    When the priority of "CASE-123" is updated to "High"
    Then I should receive a notification within 5 minutes
    And the notification should include the case ID "CASE-123"
    And the notification should include the updated priority "High"

  Scenario: Case due date approaching notification
    Given I am logged in as an employee
    And I have a case assigned to me with ID "CASE-456"
    And the due date for "CASE-456" is tomorrow
    When the notification service runs
    Then I should receive a notification within 5 minutes
    And the notification should include the case ID "CASE-456"
    And the notification should state the case is due tomorrow

  Scenario: Case escalation notification
    Given I am logged in as an employee
    And I have a case assigned to me with ID "CASE-789"
    When "CASE-789" is escalated
    Then I should receive a notification within 5 minutes
    And the notification should include the case ID "CASE-789"
    And the notification should state the case has been escalated