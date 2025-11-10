Feature: Anonymous User Can View Public Recycling Center Information

  As a user, I want to be able to anonymously view public information, so that I know about recycling centers near me before creating an account.

  Scenario: Anonymous user views the recycling center list
    Given I am an anonymous user
    When I visit the recycling center list page
    Then I should see a list of recycling centers
    And each recycling center should have a name
    And each recycling center should have an address

  Scenario: Anonymous user views details of a specific recycling center
    Given I am an anonymous user
    And a recycling center exists with the name "Eco Depot" and id "123"
    When I navigate to the details page for recycling center "123"
    Then I should see the details for "Eco Depot"
    And I should see the address for "Eco Depot"
    And I should see the hours of operation for "Eco Depot"

  Scenario: Anonymous user searches for recycling centers by zip code
    Given I am an anonymous user
    When I search for recycling centers using zip code "90210"
    Then I should see a list of recycling centers located in "90210"
    And the displayed recycling centers should be sorted by distance from "90210"

  Scenario: Anonymous user navigates to the map view of recycling centers
    Given I am an anonymous user
    When I navigate to the map view of recycling centers
    Then I should see a map with recycling centers marked
    And each marker should represent a recycling center
    And clicking a marker should display basic recycling center information