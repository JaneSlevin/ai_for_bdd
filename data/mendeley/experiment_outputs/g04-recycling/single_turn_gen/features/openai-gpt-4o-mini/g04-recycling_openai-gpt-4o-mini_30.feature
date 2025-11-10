Feature: Admin user management

  Scenario: View all users' activities
    Given I am logged in as an admin
    When I navigate to the users' activities page
    Then I should see a list of all users and their recent activities

  Scenario: Filter users by activity type
    Given I am logged in as an admin
    When I select the "Login" activity type from the filter options
    Then I should see a list of users who have logged in recently

  Scenario: Export users' activities report
    Given I am logged in as an admin
    When I click on the "Export Report" button
    Then I should download a CSV file containing all users' activities

  Scenario: Search for a specific user's activities
    Given I am logged in as an admin
    When I enter a user's name in the search bar
    Then I should see a list of activities associated with that user

  Scenario: Delete a user's activity
    Given I am logged in as an admin
    And I have navigated to a specific user's activities
    When I click on the "Delete" button next to an activity
    Then the activity should be removed from the user's activity log