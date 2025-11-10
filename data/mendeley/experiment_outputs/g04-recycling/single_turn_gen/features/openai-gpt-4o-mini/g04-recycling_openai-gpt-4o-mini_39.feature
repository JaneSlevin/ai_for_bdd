Feature: Contact Administrators

  Scenario: User submits feedback through the contact form
    Given the user is on the contact page
    When the user fills in the "Name" field with "John Doe"
    And the user fills in the "Email" field with "john.doe@example.com"
    And the user fills in the "Message" field with "I would like to provide feedback on the new feature."
    And the user clicks the "Submit" button
    Then a confirmation message "Thank you for your feedback!" should be displayed

  Scenario: User submits a help request with missing email
    Given the user is on the contact page
    When the user fills in the "Name" field with "Jane Doe"
    And the user leaves the "Email" field empty
    And the user fills in the "Message" field with "I need help with my account."
    And the user clicks the "Submit" button
    Then an error message "Email is required." should be displayed

  Scenario: User submits a message with invalid email format
    Given the user is on the contact page
    When the user fills in the "Name" field with "Alice Smith"
    And the user fills in the "Email" field with "alice.smith.com"
    And the user fills in the "Message" field with "I have a question about my order."
    And the user clicks the "Submit" button
    Then an error message "Please enter a valid email address." should be displayed

  Scenario: User cancels the feedback submission
    Given the user is on the contact page
    When the user fills in the "Name" field with "Bob Brown"
    And the user fills in the "Email" field with "bob.brown@example.com"
    And the user fills in the "Message" field with "I would like assistance with my subscription."
    And the user clicks the "Cancel" button
    Then the user should be redirected back to the homepage

  Scenario: User views contact information for support
    Given the user is on the contact page
    When the user clicks on the "Contact Information" link
    Then the user should see the administrators' email and phone number