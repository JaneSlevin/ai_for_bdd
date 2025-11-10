Feature: Update Recycling Center Information

  As a superuser,
  I want to update the recycling center information,
  So that I can provide the latest information about the recycling center.

  Scenario: Successfully update recycling center information
    Given I am logged in as a superuser
    And I navigate to the recycling center management page
    When I select a recycling center to update
    And I modify the name, address, and contact information
    And I submit the updated information
    Then I should see a confirmation message that the information has been updated
    And the updated information should reflect on the recycling center details page

  Scenario: Attempt to update with missing required fields
    Given I am logged in as a superuser
    And I navigate to the recycling center management page
    When I select a recycling center to update
    And I leave the name field empty
    And I submit the updated information
    Then I should see an error message indicating the name is required

  Scenario: Attempt to update with invalid contact information
    Given I am logged in as a superuser
    And I navigate to the recycling center management page
    When I select a recycling center to update
    And I enter an invalid phone number format
    And I submit the updated information
    Then I should see an error message indicating the contact information is invalid

  Scenario: Cancel updating recycling center information
    Given I am logged in as a superuser
    And I navigate to the recycling center management page
    When I select a recycling center to update
    And I make some changes
    And I choose to cancel the update
    Then I should return to the recycling center details page
    And the original information should remain unchanged

  Scenario: View history of updates made to the recycling center
    Given I am logged in as a superuser
    And I navigate to the recycling center management page
    When I select a recycling center to view its history
    Then I should see a list of all updates made to the recycling center
    And each entry should include the date, time, and user who made the update