Feature: Admin User Activity Management

  As an admin
  I want to handle all users' activities
  So that I can manage more efficiently

  Scenario: View a list of all user activities with details
    Given I am logged in as an admin
    When I navigate to the user activity management page
    Then I should see a list of all user activities
    And each activity should display the user's name, activity type, timestamp, and description

  Scenario: Filter user activities by user
    Given I am logged in as an admin
    And I am on the user activity management page
    When I filter the activities by user "john.doe@example.com"
    Then I should only see activities related to "john.doe@example.com"

  Scenario: Filter user activities by activity type
    Given I am logged in as an admin
    And I am on the user activity management page
    When I filter the activities by activity type "Login"
    Then I should only see activities of type "Login"

  Scenario: View details of a specific user activity
    Given I am logged in as an admin
    And I am on the user activity management page
    And I see an activity with description "User 'jane.doe@example.com' updated their profile"
    When I click on that activity
    Then I should see a detailed view of the activity
    And the detailed view should include the user's name, activity type, timestamp, description, and any associated data

  Scenario: Sort user activities by timestamp
    Given I am logged in as an admin
    And I am on the user activity management page
    When I sort the activities by timestamp in descending order
    Then the activities should be displayed in descending order of timestamp