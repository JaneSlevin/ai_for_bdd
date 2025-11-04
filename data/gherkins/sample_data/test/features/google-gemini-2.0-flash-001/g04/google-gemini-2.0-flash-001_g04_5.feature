Feature: Flexible Pickup Time Selection

  Scenario: User can select a preferred pickup time range
    Given I am scheduling a recycling pickup
    When I select a date for the pickup
    Then I should see a list of available pickup time ranges
    When I select a pickup time range "9:00 AM - 12:00 PM"
    Then the selected pickup time range should be saved

  Scenario: Pickup time ranges are dynamically generated based on date
    Given I am scheduling a recycling pickup
    When I select the date "Tomorrow"
    Then the available pickup time ranges should be different from "Today"

  Scenario: Pickup time ranges are not available on certain dates
    Given I am scheduling a recycling pickup
    When I select a date when no pickups are available
    Then I should see a message "No pickup times available on this date"
    And I should not see a list of pickup time ranges

  Scenario: Pickup time ranges are limited by recycling facility hours
    Given I am scheduling a recycling pickup for "Green Solutions"
    And "Green Solutions" closes at 4:00 PM
    Then the latest available pickup time range should end before 4:00 PM