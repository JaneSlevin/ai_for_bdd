Feature: Quick Notifications for Employees

  Scenario: Receive notification for a new case
    Given I am an employee logged into the system
    When a new case is assigned to me
    Then I should receive a notification on my dashboard
    And I should hear a sound alert

  Scenario: Receive notification for case updates
    Given I am an employee logged into the system
    When a case I am working on is updated
    Then I should receive a notification on my dashboard
    And the notification should include the details of the update

  Scenario: Disable notifications temporarily
    Given I am an employee logged into the system
    When I access the notification settings
    And I choose to disable notifications for a specified duration
    Then I should not receive any notifications during that time

  Scenario: View notification history
    Given I am an employee logged into the system
    When I navigate to the notification history section
    Then I should see a list of all notifications I have received
    And each notification should show the time it was received

  Scenario: Mark notification as read
    Given I am an employee logged into the system
    When I receive a notification
    And I mark the notification as read
    Then the notification should no longer be highlighted as unread