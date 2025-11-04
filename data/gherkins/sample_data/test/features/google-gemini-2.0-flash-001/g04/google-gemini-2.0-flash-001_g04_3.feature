Feature: Find Recycling Facilities by Zip Code

  Scenario: Entering a valid zip code displays nearby recycling facilities
    Given I am on the recycling facility search page
    When I enter a valid zip code "90210"
    And I click the "Search" button
    Then I should see a list of recycling facilities near "90210"
    And each recycling facility should display its name
    And each recycling facility should display its distance from "90210"

  Scenario: Entering an invalid zip code displays an error message
    Given I am on the recycling facility search page
    When I enter an invalid zip code "00000"
    And I click the "Search" button
    Then I should see an error message "Invalid zip code"
    And the list of recycling facilities should not be displayed

  Scenario: Entering a zip code with no nearby facilities displays a message
    Given I am on the recycling facility search page
    When I enter a zip code "99999" with no nearby recycling facilities
    And I click the "Search" button
    Then I should see a message "No recycling facilities found near 99999"
    And the list of recycling facilities should not be displayed