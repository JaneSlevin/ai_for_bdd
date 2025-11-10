Feature: Flexible Pick Up Time

  Scenario: User selects a pick-up time within operating hours
    Given the user is on the pick-up time selection page
    When the user selects a pick-up time of "3:00 PM"
    Then the system should confirm the selected pick-up time is "3:00 PM"
    And the system should display a message "Pick-up time confirmed for 3:00 PM"

  Scenario: User attempts to select a pick-up time outside operating hours
    Given the user is on the pick-up time selection page
    When the user selects a pick-up time of "11:00 PM"
    Then the system should display an error message "Please select a pick-up time within our operating hours"

  Scenario: User changes their selected pick-up time
    Given the user has selected a pick-up time of "2:00 PM"
    When the user changes the pick-up time to "4:30 PM"
    Then the system should update the selected pick-up time to "4:30 PM"
    And the system should display a confirmation message "Pick-up time updated to 4:30 PM"

  Scenario: User verifies available pick-up times
    Given the user is on the pick-up time selection page
    When the user clicks on the "Available Times" button
    Then the system should display a list of all available pick-up times for the selected date

  Scenario: User selects the earliest available pick-up time
    Given the user is on the pick-up time selection page
    When the user selects the earliest available pick-up time
    Then the system should confirm the selected pick-up time is the earliest time
    And the system should display a message "Pick-up time confirmed for [earliest time]"