Feature: Add Recycling Center Information

  As an admin
  I want to add recycling center information
  So that I can keep the database up-to-date over time

  Scenario: Successfully add a new recycling center
    Given I am logged in as an admin
    When I navigate to the "Add Recycling Center" page
    And I enter the name "Green Waste Recycling"
    And I enter the address "123 Eco Lane, Springfield"
    And I enter the contact number "555-1234"
    And I click the "Submit" button
    Then I should see a success message "Recycling center added successfully"
    And the recycling center "Green Waste Recycling" should be listed in the database

  Scenario: Attempt to add a recycling center with missing name
    Given I am logged in as an admin
    When I navigate to the "Add Recycling Center" page
    And I leave the name field empty
    And I enter the address "123 Eco Lane, Springfield"
    And I enter the contact number "555-1234"
    And I click the "Submit" button
    Then I should see an error message "Name is required"

  Scenario: Attempt to add a recycling center with invalid contact number
    Given I am logged in as an admin
    When I navigate to the "Add Recycling Center" page
    And I enter the name "Green Waste Recycling"
    And I enter the address "123 Eco Lane, Springfield"
    And I enter the contact number "invalid-number"
    And I click the "Submit" button
    Then I should see an error message "Contact number is invalid"

  Scenario: Attempt to add a recycling center with duplicate name
    Given I am logged in as an admin
    And there is a recycling center named "Green Waste Recycling" in the database
    When I navigate to the "Add Recycling Center" page
    And I enter the name "Green Waste Recycling"
    And I enter the address "456 Recycle Blvd, Springfield"
    And I enter the contact number "555-5678"
    And I click the "Submit" button
    Then I should see an error message "A recycling center with this name already exists"

  Scenario: Cancel adding a recycling center
    Given I am logged in as an admin
    When I navigate to the "Add Recycling Center" page
    And I enter the name "Green Waste Recycling"
    And I enter the address "123 Eco Lane, Springfield"
    And I enter the contact number "555-1234"
    And I click the "Cancel" button
    Then I should be redirected to the recycling center list page
    And I should not see "Green Waste Recycling" in the database