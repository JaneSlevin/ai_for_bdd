Feature: Account Creation

  Scenario: Successful account creation with valid details
    Given I am on the account creation page
    When I enter a valid username "testuser"
    And I enter a valid email "testuser@example.com"
    And I enter a valid password "Password123!"
    And I confirm my password "Password123!"
    And I click the "Create Account" button
    Then I should see a success message "Account created successfully"
    And I should be redirected to my profile page

  Scenario: Account creation fails with missing username
    Given I am on the account creation page
    When I enter an empty username
    And I enter a valid email "testuser@example.com"
    And I enter a valid password "Password123!"
    And I confirm my password "Password123!"
    And I click the "Create Account" button
    Then I should see an error message "Username is required"

  Scenario: Account creation fails with invalid email format
    Given I am on the account creation page
    When I enter a valid username "testuser"
    And I enter an invalid email "testuser.com"
    And I enter a valid password "Password123!"
    And I confirm my password "Password123!"
    And I click the "Create Account" button
    Then I should see an error message "Please enter a valid email address"

  Scenario: Account creation fails with password mismatch
    Given I am on the account creation page
    When I enter a valid username "testuser"
    And I enter a valid email "testuser@example.com"
    And I enter a valid password "Password123!"
    And I confirm my password "DifferentPassword456!"
    And I click the "Create Account" button
    Then I should see an error message "Passwords do not match"

  Scenario: Account creation fails with weak password
    Given I am on the account creation page
    When I enter a valid username "testuser"
    And I enter a valid email "testuser@example.com"
    And I enter a weak password "12345"
    And I confirm my password "12345"
    And I click the "Create Account" button
    Then I should see an error message "Password must be at least 8 characters long and include a mix of letters and numbers"