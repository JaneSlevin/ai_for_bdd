Feature: Find Recycling Facilities by Zip Code

  As a user,
  I want to be able to enter my zip code and get a list of nearby recycling facilities,
  So that I can determine which ones I should consider.

  Scenario: Valid zip code returns a list of recycling facilities
    Given I am on the recycling facility search page
    When I enter "90210" in the zip code field
    And I click the "Search" button
    Then I should see a list of recycling facilities
    And the list should contain at least 3 facilities

  Scenario: Invalid zip code displays an error message
    Given I am on the recycling facility search page
    When I enter "123" in the zip code field
    And I click the "Search" button
    Then I should see an error message "Invalid zip code format"

  Scenario: No recycling facilities found for a valid zip code
    Given I am on the recycling facility search page
    When I enter "00501" in the zip code field
    And I click the "Search" button
    Then I should see a message "No recycling facilities found near this zip code"

  Scenario: Empty zip code field displays an error
    Given I am on the recycling facility search page
    When I click the "Search" button
    Then I should see an error message "Please enter a zip code"

  Scenario: Display facility details when clicking on a facility in the list
    Given I am on the recycling facility search page
    When I enter "90210" in the zip code field
    And I click the "Search" button
    Then I should see a list of recycling facilities
    When I click on the first facility in the list
    Then I should be redirected to the facility details page
    And I should see the facility name, address, and contact information