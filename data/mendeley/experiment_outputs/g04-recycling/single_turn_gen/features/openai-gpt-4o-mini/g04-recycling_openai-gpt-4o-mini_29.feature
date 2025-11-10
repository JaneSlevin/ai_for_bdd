Feature: Secure storage of personal information

  Scenario: User registers with personal information
    Given the user is on the registration page
    When the user enters their name, email, and phone number
    And the user submits the registration form
    Then the user's personal information should be encrypted and stored securely in the database
    And the user should receive a confirmation message of successful registration

  Scenario: User updates personal information
    Given the user is logged into their account
    When the user navigates to the account settings page
    And the user updates their phone number and address
    And the user saves the changes
    Then the updated personal information should be encrypted and stored securely in the database
    And the user should receive a confirmation message of successful update

  Scenario: User attempts to access another user's personal information
    Given the user is logged into their account
    When the user tries to access another user's profile
    Then the system should deny access
    And the user should see an error message indicating unauthorized access

  Scenario: User requests data deletion
    Given the user is logged into their account
    When the user requests to delete their personal information
    And the user confirms the deletion request
    Then the user's personal information should be securely deleted from the database
    And the user should receive a confirmation message of successful deletion

  Scenario: User receives notification of data breach
    Given the website experiences a data breach
    When the user logs into their account
    Then the user should receive a notification about the data breach
    And the notification should include steps to secure their personal information