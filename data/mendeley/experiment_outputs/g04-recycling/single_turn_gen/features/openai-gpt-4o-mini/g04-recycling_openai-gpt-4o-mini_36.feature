Feature: View recycling centers on a map

  Scenario: Display all recycling centers on the map
    Given I am on the recycling center map page
    When the map is loaded
    Then I should see markers for all recycling centers in my area

  Scenario: Filter recycling centers by type
    Given I am on the recycling center map page
    When I select the filter for "Electronics"
    Then I should only see markers for electronics recycling centers on the map

  Scenario: Get directions to a selected recycling center
    Given I am on the recycling center map page
    And I see a marker for a recycling center
    When I click on the marker
    Then I should see an option to "Get Directions"
    And I should be able to view directions to the selected recycling center

  Scenario: Search for recycling centers by address
    Given I am on the recycling center map page
    When I enter an address in the search bar
    Then I should see markers for recycling centers near the entered address

  Scenario: View details of a recycling center
    Given I am on the recycling center map page
    And I see a marker for a recycling center
    When I click on the marker
    Then I should see a pop-up with details about the recycling center, including hours of operation and accepted materials