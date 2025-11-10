Feature: View Safe Disposal Events

  Scenario: User views safe disposal events in their area
    Given the user is on the safe disposal events page
    When the user enters their location
    Then the user should see a list of safe disposal events in their area

  Scenario: User views details of a specific safe disposal event
    Given the user is on the safe disposal events page
    And the user sees a list of safe disposal events
    When the user clicks on a specific event
    Then the user should see the details of that event, including date, time, and location

  Scenario: User filters safe disposal events by date
    Given the user is on the safe disposal events page
    When the user selects a date range from the filter options
    Then the user should see a list of safe disposal events within the selected date range

  Scenario: User sees no events in their area
    Given the user is on the safe disposal events page
    And there are no safe disposal events in the user's area
    Then the user should see a message stating "No safe disposal events found in your area."

  Scenario: User accesses the safe disposal events page without location input
    Given the user is on the safe disposal events page
    When the user has not entered their location
    Then the user should be prompted to enter their location to view events