Feature: Add Recycling Center Information

  As an admin
  I want to add recycling center information
  So that I can keep the database up-to-date over time

  Scenario: Successfully add a new recycling center with all required information
    Given I am logged in as an administrator
    And I am on the "Add Recycling Center" page
    When I fill in the "Name" field with "EcoCycle CHaRM"
    And I fill in the "Address" field with "6400 Arapahoe Rd, Boulder, CO 80303"
    And I fill in the "Phone" field with "303-442-7325"
    And I select "Boulder County" from the "County" dropdown
    And I click the "Save" button
    Then I should see a success message indicating the recycling center was added
    And the new recycling center "EcoCycle CHaRM" should be listed in the recycling center directory

  Scenario: Add a new recycling center with valid website and notes
    Given I am logged in as an administrator
    And I am on the "Add Recycling Center" page
    When I fill in the "Name" field with "Western Disposal Services"
    And I fill in the "Address" field with "5880 Butte Ct, Boulder, CO 80301"
    And I fill in the "Phone" field with "303-444-2037"
    And I fill in the "Website" field with "https://www.westerndisposal.com/"
    And I fill in the "Notes" field with "Accepts a wide variety of materials. Check website for details."
    And I select "Boulder County" from the "County" dropdown
    And I click the "Save" button
    Then I should see a success message indicating the recycling center was added
    And the new recycling center "Western Disposal Services" should be listed in the recycling center directory with the given website and notes

  Scenario: Attempt to add a recycling center with missing required information
    Given I am logged in as an administrator
    And I am on the "Add Recycling Center" page
    When I fill in the "Address" field with "123 Main Street"
    And I fill in the "Phone" field with "555-1212"
    And I select "Boulder County" from the "County" dropdown
    And I click the "Save" button
    Then I should see an error message indicating that the "Name" field is required

  Scenario: Attempt to add a recycling center with an invalid phone number format
    Given I am logged in as an administrator
    And I am on the "Add Recycling Center" page
    When I fill in the "Name" field with "Invalid Phone Example"
    And I fill in the "Address" field with "456 Elm St"
    And I fill in the "Phone" field with "123-45"
    And I select "Boulder County" from the "County" dropdown
    And I click the "Save" button
    Then I should see an error message indicating that the "Phone" field is invalid