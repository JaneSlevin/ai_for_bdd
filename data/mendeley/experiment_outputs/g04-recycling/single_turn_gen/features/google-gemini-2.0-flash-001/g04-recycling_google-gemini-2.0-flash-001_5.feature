Feature: Flexible Pickup Time

  As a user, I want to have a flexible pick up time, so that I can more conveniently use the website.

  Scenario: Schedule a pickup for the soonest available time
    Given I am on the order placement page
    When I select "Soonest Available" as the pickup time
    Then the system should automatically select the earliest available pickup time
    And I should see a confirmation message with the scheduled pickup time

  Scenario: Schedule a pickup for a specific date and time in the future
    Given I am on the order placement page
    When I select a specific date and time for pickup, such as "2024-03-15 14:00"
    Then the system should schedule the pickup for the selected date and time
    And I should see a confirmation message with the scheduled pickup time as "2024-03-15 14:00"

  Scenario: Attempt to schedule a pickup for a past date and time
    Given I am on the order placement page
    When I select a past date and time for pickup, such as "Yesterday 10:00"
    Then the system should display an error message indicating that the selected time is in the past
    And the pickup time selection should remain unchanged

  Scenario: Attempt to schedule a pickup outside of available hours
    Given I am on the order placement page
    When I select a date and time outside the available pickup hours, such as "2024-03-16 02:00"
    Then the system should display an error message indicating that the selected time is outside of service hours
    And the pickup time selection should remain unchanged

  Scenario: Schedule a pickup for a specific time with a reasonable delay
    Given I am on the order placement page
    When I select a specific date and time for pickup 30 minutes from now
    Then the system should schedule the pickup for the selected date and time
    And I should see a confirmation message with the scheduled pickup time