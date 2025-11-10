Feature: Email Notification Subscription

  Scenario: User successfully subscribes with a valid email address
    Given the user is on the subscription page
    When the user enters a valid email address "user@example.com"
    And the user clicks on the "Subscribe" button
    Then the user should see a confirmation message "Subscription successful! You will receive notifications at user@example.com"

  Scenario: User tries to subscribe with an invalid email address
    Given the user is on the subscription page
    When the user enters an invalid email address "user@.com"
    And the user clicks on the "Subscribe" button
    Then the user should see an error message "Please enter a valid email address"

  Scenario: User tries to subscribe with an already subscribed email address
    Given the user is on the subscription page
    And the user has already subscribed with the email address "user@example.com"
    When the user enters the email address "user@example.com"
    And the user clicks on the "Subscribe" button
    Then the user should see an error message "This email is already subscribed"

  Scenario: User leaves the email field empty and tries to subscribe
    Given the user is on the subscription page
    When the user leaves the email field empty
    And the user clicks on the "Subscribe" button
    Then the user should see an error message "Email address cannot be empty"

  Scenario: User receives a notification email for new events after subscribing
    Given the user has successfully subscribed with the email address "user@example.com"
    When a new event is posted
    Then the user should receive an email notification at "user@example.com" with the details of the new event