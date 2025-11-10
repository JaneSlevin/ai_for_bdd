Feature: Special Waste Drop-off Site Map

  As a user, I want to be able to view a map display of the special waste drop-off sites around my area.

  Scenario: User views the map and sees nearby drop-off sites
    Given I am on the special waste drop-off site map page
    When the map is loaded
    Then I should see a map centered around my current location
    And I should see markers indicating nearby special waste drop-off sites

  Scenario: User zooms out and sees more distant drop-off sites
    Given I am on the special waste drop-off site map page
    When the map is loaded
    And I zoom out on the map
    Then I should see more drop-off site markers as the map area expands

  Scenario: User clicks on a drop-off site marker and sees details
    Given I am on the special waste drop-off site map page
    When the map is loaded
    And I click on a drop-off site marker
    Then I should see a pop-up window with details about the site
    And the details should include the site name, address, and accepted materials

  Scenario: User searches for a specific address and sees drop-off sites near that location
    Given I am on the special waste drop-off site map page
    When I enter a specific address in the search bar
    And I submit the search
    Then the map should center on the searched address
    And I should see markers indicating special waste drop-off sites near that address

  Scenario: No drop-off sites are available in the immediate area
    Given I am on the special waste drop-off site map page
    When the map is loaded in an area with no drop-off sites
    Then I should see a message indicating no drop-off sites are nearby
    And I should see a suggestion to zoom out or search in other areas