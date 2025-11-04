Feature: Flexible pickup time for recycling services

  Scenario: User selects a preferred pickup time
    Given I am on the recycling services scheduling page
    When I choose a preferred pickup date from the calendar
    And I select a preferred pickup time from the available time slots
    And I click the "Schedule Pickup" button
    Then I should see a confirmation message with my selected pickup date and time

  Scenario: User makes changes to pickup time
    Given I have already scheduled a pickup
    When I navigate to the pickup management section
    And I select the option to change my pickup time
    And I choose a new pickup date and time
    And I click the "Update Pickup" button
    Then I should see a confirmation message indicating that my pickup time has been updated

  Scenario: User requests a pickup at a time outside of available hours
    Given I am on the recycling services scheduling page
    When I choose a pickup date
    And I select a pickup time that is outside of available hours
    And I click the "Schedule Pickup" button
    Then I should see an error message indicating that the selected time is not available