Feature: Route Planning System Access

  As an employee,
  I want to access the route planning system during work,
  so that I can be guided through the neighbourhood.

  Scenario: Successful access to the route planning system
    Given I am logged into the employee portal
    When I navigate to the route planning system
    Then I should see the main dashboard of the route planning system

  Scenario: Accessing the route planning system without being logged in
    Given I am not logged into the employee portal
    When I try to access the route planning system
    Then I should see a prompt to log in

  Scenario: Searching for a specific location in the route planning system
    Given I have accessed the route planning system
    When I enter "123 Main St" in the search bar
    Then I should see the route to "123 Main St" displayed on the map

  Scenario: Receiving route guidance
    Given I have accessed the route planning system and entered a destination
    When I start the navigation
    Then I should receive step-by-step directions to my destination

  Scenario: Accessing the route planning system while offline
    Given I am in a location with no internet connection
    When I try to access the route planning system
    Then I should see a message indicating that the system is unavailable offline