Feature: View Safe Disposal Events

  As a user, I want to be able to view the safe disposal events currently being organised around my area.

  Scenario: View events in my current location
    Given I am on the homepage
    When I allow the application to access my location
    Then I should see a list of safe disposal events near my current location
    And each event should display its name, date, time, and address

  Scenario: Filter events by waste type
    Given I am viewing the list of safe disposal events
    When I select "Electronics" as the waste type filter
    Then I should only see events that accept electronics for disposal

  Scenario: No events found in my area
    Given I am on the homepage
    When I allow the application to access my location
    And there are no safe disposal events currently scheduled near my location
    Then I should see a message indicating that no events were found in my area

  Scenario: View event details
    Given I am viewing the list of safe disposal events
    When I click on an event
    Then I should be taken to the event details page
    And I should see the event's full description, accepted waste types, and organizer contact information

  Scenario: Search for events by address
    Given I am on the homepage
    When I enter an address into the search bar
    And I click the "Search" button
    Then I should see a list of safe disposal events near the entered address