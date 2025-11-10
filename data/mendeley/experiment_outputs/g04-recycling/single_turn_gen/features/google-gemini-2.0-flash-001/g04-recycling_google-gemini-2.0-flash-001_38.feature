Feature: Email Account Linking for Password Recovery

  As a user, I want to link my email account to my profile,
  so that I can get a temporary password in case I forget my own one.

  Scenario: Successfully linking a valid email address
    Given I am on the profile settings page
    When I enter a valid email address "test@example.com" in the email field
    And I click the "Link Email" button
    Then I should see a success message "Email address linked successfully."
    And the email address "test@example.com" should be displayed as linked in my profile
    And I should receive a confirmation email at "test@example.com"

  Scenario: Attempting to link an invalid email address
    Given I am on the profile settings page
    When I enter an invalid email address "invalid-email" in the email field
    And I click the "Link Email" button
    Then I should see an error message "Invalid email address format."
    And the email address should not be linked

  Scenario: Attempting to link an email address that is already linked to another account
    Given I am on the profile settings page
    And the email address "already_linked@example.com" is linked to another account
    When I enter the email address "already_linked@example.com" in the email field
    And I click the "Link Email" button
    Then I should see an error message "This email address is already linked to another account."
    And the email address should not be linked

  Scenario: Unlinking an email address from profile
    Given I am on the profile settings page
    And the email address "linked@example.com" is linked to my profile
    When I click the "Unlink Email" button next to "linked@example.com"
    Then I should see a confirmation prompt
    And I confirm the unlinking
    Then I should see a success message "Email address unlinked successfully."
    And the email address "linked@example.com" should no longer be displayed as linked in my profile