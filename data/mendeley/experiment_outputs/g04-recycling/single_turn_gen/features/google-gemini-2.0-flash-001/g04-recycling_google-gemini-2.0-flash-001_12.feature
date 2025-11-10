Feature: Flexible Pickup Time Selection

  As a user
  I want to choose a flexible pick up time
  So that I can more conveniently use the website

  Scenario: Selecting a pickup time within the available range
    Given I am on the order placement page
    When I select a pickup date of "Tomorrow"
    And I select a pickup time of "10:30 AM"
    Then the system should confirm the selected pickup time is valid
    And the pickup time should be displayed in the order summary

  Scenario: Selecting a pickup time outside the available range
    Given I am on the order placement page
    When I select a pickup date of "Today"
    And I select a pickup time of "8:00 AM" which is before the opening time
    Then the system should display an error message "Pickup time is outside the available range"
    And I should be prompted to select a different time

  Scenario: Selecting a pickup time on a closed day
    Given I am on the order placement page
    When I select a pickup date of "Sunday" which is a closed day
    Then the system should display an error message "Pickup is not available on this day"
    And I should be prompted to select a different date

  Scenario: Changing the pickup time after initial selection
    Given I am on the order placement page
    And I have already selected a pickup time of "11:00 AM" for "Tomorrow"
    When I change the pickup time to "1:00 PM"
    Then the system should update the pickup time in the order summary to "1:00 PM" for "Tomorrow"