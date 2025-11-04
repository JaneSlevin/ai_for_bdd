Feature: Search for nearby recycling facilities by zip code

  Scenario: User enters a valid zip code
    Given I am on the recycling facilities search page
    When I enter a valid zip code in the search field
    And I click the "Find Recycling Facilities" button
    Then I should see a list of nearby recycling facilities associated with the entered zip code

  Scenario: User enters an invalid zip code
    Given I am on the recycling facilities search page
    When I enter an invalid zip code in the search field
    And I click the "Find Recycling Facilities" button
    Then I should see an error message indicating the zip code is invalid
    And I should not see any list of recycling facilities

  Scenario: User enters a zip code with no nearby recycling facilities
    Given I am on the recycling facilities search page
    When I enter a zip code that has no recycling facilities nearby in the search field
    And I click the "Find Recycling Facilities" button
    Then I should see a message indicating that there are no recycling facilities found near that zip code