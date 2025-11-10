Feature: Map display of special waste drop off sites

  Scenario: User views the map displaying special waste drop off sites
    Given the user is on the waste management application homepage
    When the user clicks on the "View Drop Off Sites" button
    Then the user should see a map with markers indicating special waste drop off sites in their area

  Scenario: User zooms in on the map to see more details
    Given the user is viewing the map of special waste drop off sites
    When the user zooms in on the map
    Then the user should see additional details for each drop off site, including address and hours of operation

  Scenario: User filters drop off sites by waste type
    Given the user is viewing the map of special waste drop off sites
    When the user selects a waste type filter from the dropdown
    Then the map should update to display only the drop off sites that accept the selected waste type

  Scenario: User clicks on a drop off site marker
    Given the user is viewing the map with drop off site markers
    When the user clicks on a specific drop off site marker
    Then a popup should appear displaying the name, address, and contact information for that drop off site

  Scenario: User searches for drop off sites using location input
    Given the user is on the waste management application homepage
    When the user enters their location into the search bar and clicks "Search"
    Then the map should display special waste drop off sites near the entered location