Feature: Nearby Recycling Facilities Search

  Scenario: User enters a valid zip code
    Given the user is on the recycling facilities search page
    When the user enters a valid zip code "90210"
    And clicks on the "Search" button
    Then the user should see a list of nearby recycling facilities
    And the list should display at least 3 recycling facilities

  Scenario: User enters an invalid zip code
    Given the user is on the recycling facilities search page
    When the user enters an invalid zip code "12345abc"
    And clicks on the "Search" button
    Then the user should see an error message "Please enter a valid zip code."

  Scenario: User enters a zip code with no nearby facilities
    Given the user is on the recycling facilities search page
    When the user enters a zip code "00000"
    And clicks on the "Search" button
    Then the user should see a message "No recycling facilities found near this zip code."

  Scenario: User enters a zip code and sorts the results by distance
    Given the user is on the recycling facilities search page
    When the user enters a valid zip code "10001"
    And clicks on the "Search" button
    And selects "Sort by Distance"
    Then the user should see the list of facilities sorted by distance from the entered zip code

  Scenario: User enters a zip code and filters results by facility type
    Given the user is on the recycling facilities search page
    When the user enters a valid zip code "30301"
    And clicks on the "Search" button
    And selects "Plastic" from the facility type filter
    Then the user should see only recycling facilities that accept plastic