Feature: Flexible Pick Up Time Selection

  Scenario: User selects a specific pick up time
    Given the user is on the pick up selection page
    When the user chooses "3:00 PM" from the available pick up times
    Then the selected pick up time should be displayed as "3:00 PM"
    And the user should be able to proceed to the next step

  Scenario: User selects the earliest available pick up time
    Given the user is on the pick up selection page
    When the user selects the "Earliest Available" option
    Then the system should display the next available pick up time
    And the user should be able to proceed to the next step

  Scenario: User attempts to select a past pick up time
    Given the user is on the pick up selection page
    When the user tries to select "1:00 PM"
    Then the user should see an error message saying "Please select a future pick up time"

  Scenario: User modifies the pick up time after selection
    Given the user has previously selected "2:00 PM" as the pick up time
    When the user changes the pick up time to "4:00 PM"
    Then the selected pick up time should be updated to "4:00 PM"
    And the user should see a confirmation message about the updated pick up time

  Scenario: User views available pick up times for different days
    Given the user is on the pick up selection page
    When the user selects "Tomorrow" from the date options
    Then the system should display the available pick up times for tomorrow
    And the user should be able to select any of the available times