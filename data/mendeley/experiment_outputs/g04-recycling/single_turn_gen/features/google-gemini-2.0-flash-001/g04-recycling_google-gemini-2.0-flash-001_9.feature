Feature: View Recycling Bin Map

  As a user
  I want to be able to view a map display of the public recycling bins around my area

  Scenario: Map displays recycling bins within the user's current location
    Given I am on the recycling bin map page
    When the map loads
    Then I should see a map centered around my current location
    And I should see recycling bin markers within a 5km radius of my location

  Scenario: User can zoom in and out of the map to see more or fewer bins
    Given I am on the recycling bin map page
    When I zoom in on the map
    Then I should see more recycling bin markers in a smaller area
    When I zoom out on the map
    Then I should see fewer recycling bin markers in a larger area

  Scenario: User can click on a recycling bin marker to see bin details
    Given I am on the recycling bin map page
    And I see a recycling bin marker on the map
    When I click on a recycling bin marker
    Then I should see a pop-up window
    And the pop-up window should display the address of the recycling bin
    And the pop-up window should display the types of materials accepted (e.g., plastic, glass, paper)

  Scenario: No recycling bins are found in the user's immediate area
    Given I am on the recycling bin map page
    And there are no recycling bins within 1km of my current location
    Then I should see a message indicating no recycling bins were found nearby
    And the message should suggest expanding the search area

  Scenario: User can move the map to view recycling bins in other locations
    Given I am on the recycling bin map page
    When I drag the map to a different location
    Then the map should display recycling bin markers in the new location