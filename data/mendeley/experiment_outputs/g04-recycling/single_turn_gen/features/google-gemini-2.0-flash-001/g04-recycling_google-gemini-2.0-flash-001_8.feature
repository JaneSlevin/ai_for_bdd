Feature: Email Notifications for New Events

  As a user, I want to be able to give my email ID, so that I can receive notifications for new events as they are posted.

  Scenario: Subscribe to email notifications with a valid email address
    Given I am on the event notification subscription page
    When I enter a valid email address "test@example.com" in the email field
    And I click the "Subscribe" button
    Then I should see a success message "You have successfully subscribed to event notifications!"
    And I should receive a confirmation email at "test@example.com"

  Scenario: Attempt to subscribe with an invalid email address
    Given I am on the event notification subscription page
    When I enter an invalid email address "invalid-email" in the email field
    And I click the "Subscribe" button
    Then I should see an error message "Please enter a valid email address"
    And I should not receive a confirmation email

  Scenario: Attempt to subscribe with an already subscribed email address
    Given I am on the event notification subscription page
    And the email address "test@example.com" is already subscribed to notifications
    When I enter the email address "test@example.com" in the email field
    And I click the "Subscribe" button
    Then I should see a message "This email address is already subscribed to notifications."

  Scenario: Verify email notification after a new event is posted
    Given I am a subscribed user with email "test@example.com"
    When a new event "Upcoming Tech Conference" is posted
    Then I should receive an email notification about the "Upcoming Tech Conference" at "test@example.com"
    And the email should contain details about the event