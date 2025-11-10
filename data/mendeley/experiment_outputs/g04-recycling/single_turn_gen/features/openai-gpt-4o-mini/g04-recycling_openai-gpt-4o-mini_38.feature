Feature: Link email account to user profile

  Scenario: Successfully link an email account
    Given I am a registered user
    When I navigate to the profile settings
    And I enter a valid email address
    And I click on the "Link Email" button
    Then I should see a confirmation message "Email linked successfully"
    And the email address should be displayed in my profile settings

  Scenario: Attempt to link an already linked email account
    Given I am a registered user with a linked email address
    When I navigate to the profile settings
    And I enter the same email address
    And I click on the "Link Email" button
    Then I should see an error message "This email is already linked to your profile"

  Scenario: Attempt to link an invalid email address
    Given I am a registered user
    When I navigate to the profile settings
    And I enter an invalid email address "invalid-email"
    And I click on the "Link Email" button
    Then I should see an error message "Please enter a valid email address"

  Scenario: Receive a temporary password via email
    Given I have linked my email account to my profile
    When I click on the "Forgot Password" link
    And I enter my email address
    Then I should receive an email with a temporary password

  Scenario: Attempt to link email account without entering an email
    Given I am a registered user
    When I navigate to the profile settings
    And I leave the email field empty
    And I click on the "Link Email" button
    Then I should see an error message "Email field cannot be empty"