Feature: Account Creation

  As a user,
  I want to be able to create an account,
  So that I can create my own profile.

  Scenario: Successful account creation with valid credentials
    Given I am on the registration page
    When I enter a valid username "testuser123"
    And I enter a valid email address "testuser123@example.com"
    And I enter a strong password "Password123!"
    And I confirm the password "Password123!"
    And I click the "Create Account" button
    Then I should be redirected to the profile page
    And a success message should be displayed "Account created successfully!"

  Scenario: Account creation fails with an existing username
    Given I am on the registration page
    When I enter an existing username "existinguser"
    And I enter a valid email address "newemail@example.com"
    And I enter a strong password "Password123!"
    And I confirm the password "Password123!"
    And I click the "Create Account" button
    Then I should see an error message "Username already exists"
    And I should remain on the registration page

  Scenario: Account creation fails with invalid email format
    Given I am on the registration page
    When I enter a valid username "testuser456"
    And I enter an invalid email address "invalidemail"
    And I enter a strong password "Password123!"
    And I confirm the password "Password123!"
    And I click the "Create Account" button
    Then I should see an error message "Invalid email format"
    And I should remain on the registration page

  Scenario: Account creation fails with mismatched passwords
    Given I am on the registration page
    When I enter a valid username "testuser789"
    And I enter a valid email address "testuser789@example.com"
    And I enter a strong password "Password123!"
    And I confirm the password "DifferentPassword"
    And I click the "Create Account" button
    Then I should see an error message "Passwords do not match"
    And I should remain on the registration page