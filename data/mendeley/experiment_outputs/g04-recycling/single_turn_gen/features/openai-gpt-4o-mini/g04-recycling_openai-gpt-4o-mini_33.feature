Feature: View Activity Fees

  As a company accountant
  I want to view all available activity fees online
  So that I can easily create a bill statement

  Scenario: Successfully view all activity fees
    Given I am logged in as a company accountant
    When I navigate to the activity fees page
    Then I should see a list of all available activity fees
    And each activity fee should display its name and amount

  Scenario: No activity fees available
    Given I am logged in as a company accountant
    And there are no activity fees in the system
    When I navigate to the activity fees page
    Then I should see a message indicating that no activity fees are available

  Scenario: Filter activity fees by category
    Given I am logged in as a company accountant
    And there are multiple activity fees categorized under different types
    When I select a category from the filter options
    Then I should see only the activity fees that belong to the selected category

  Scenario: Search for a specific activity fee
    Given I am logged in as a company accountant
    And there are multiple activity fees listed
    When I enter a specific activity fee name in the search bar
    Then I should see the activity fee that matches the search term

  Scenario: Access activity fees page without being logged in
    Given I am not logged in
    When I attempt to navigate to the activity fees page
    Then I should be redirected to the login page