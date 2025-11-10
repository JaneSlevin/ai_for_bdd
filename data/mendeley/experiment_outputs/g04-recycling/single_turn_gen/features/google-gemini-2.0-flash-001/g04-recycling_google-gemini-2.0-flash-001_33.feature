Feature: View Available Activity Fees

  As a company accountant
  I want to view all available activity fees online
  So that I can easily create a bill statement

  Scenario: Successfully viewing all available activity fees
    Given I am logged in as a company accountant
    When I navigate to the "Activity Fees" page
    Then I should see a table of activity fees
    And the table should contain columns "Activity Type", "Description", and "Fee Amount"
    And I should see at least one activity fee listed

  Scenario: Filtering activity fees by activity type
    Given I am on the "Activity Fees" page
    When I filter the activity fees by "Consultation"
    Then I should only see activity fees with the "Activity Type" of "Consultation"

  Scenario: Displaying a message when no activity fees are found
    Given the system has no activity fees defined
    When I navigate to the "Activity Fees" page
    Then I should see a message "No activity fees found."

  Scenario: Displaying an error message when unable to retrieve activity fees
    Given the system is unable to retrieve activity fees
    When I navigate to the "Activity Fees" page
    Then I should see an error message "Unable to retrieve activity fees. Please try again later."