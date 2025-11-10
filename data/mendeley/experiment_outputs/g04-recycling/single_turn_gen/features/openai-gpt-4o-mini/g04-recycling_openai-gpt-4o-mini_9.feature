Feature: View recycling bins on a map

  Scenario: User views map with recycling bins displayed
    Given the user is on the recycling bins map page
    When the map loads
    Then the user should see a map centered on their current location
    And the map should display markers for all public recycling bins in the area

  Scenario: User searches for recycling bins in a specific area
    Given the user is on the recycling bins map page
    When the user enters "Downtown" in the search bar
    And clicks on the search button
    Then the map should update to display only the recycling bins in the Downtown area

  Scenario: User clicks on a recycling bin marker
    Given the user is viewing the recycling bins map
    When the user clicks on a recycling bin marker
    Then a popup should appear showing details about the recycling bin, including its address and types of materials accepted

  Scenario: User filters recycling bins by materials accepted
    Given the user is on the recycling bins map page
    When the user selects "Plastic" from the materials filter options
    Then the map should display only the recycling bins that accept plastic materials

  Scenario: User refreshes the map
    Given the user is viewing the recycling bins map
    When the user clicks the refresh button
    Then the map should reload and display the most up-to-date locations of the recycling bins