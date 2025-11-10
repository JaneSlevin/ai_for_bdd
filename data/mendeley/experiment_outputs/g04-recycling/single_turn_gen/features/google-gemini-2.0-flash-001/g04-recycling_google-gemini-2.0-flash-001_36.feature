Feature: View Recycling Center Locations on a Map

  As a user,
  I want to view all locations of recycling centers on a map,
  So that I can check which routes to take to drop off waste.

  Scenario: Map displays recycling center markers
    Given I am on the recycling center map page
    Then the map is displayed
    And recycling center markers are visible on the map

  Scenario: Clicking a marker displays recycling center details
    Given I am on the recycling center map page
    And recycling center markers are visible on the map
    When I click on a recycling center marker
    Then a pop-up window is displayed with the recycling center's name and address

  Scenario: Map is centered on my current location
    Given I am on the recycling center map page
    And my location is enabled
    Then the map is centered on my current location

  Scenario: Searching for a location updates the map view
    Given I am on the recycling center map page
    When I search for "New York, NY"
    Then the map view is updated to center on "New York, NY"
    And recycling centers near "New York, NY" are displayed