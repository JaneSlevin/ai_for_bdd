Feature: Contact Administrators

  As a user
  I want to contact the administrators
  So that I can give feedback or ask for help

  Scenario: Successfully submit a contact form with valid data
    Given I am on the contact page
    When I fill in the contact form with valid data
    And I submit the form
    Then I should see a success message indicating the form was submitted
    And I should receive an email confirmation

  Scenario: Contact form submission with missing required fields
    Given I am on the contact page
    When I submit the form without filling in the required fields
    Then I should see error messages indicating the missing fields

  Scenario: Contact form submission with invalid email format
    Given I am on the contact page
    When I fill in the contact form with an invalid email format
    And I submit the form
    Then I should see an error message indicating the email format is invalid

  Scenario: Contact form submission with a message exceeding the character limit
    Given I am on the contact page
    When I fill in the contact form with a message exceeding the character limit
    And I submit the form
    Then I should see an error message indicating the message exceeds the limit

  Scenario: Verify the presence of contact information on the contact page
    Given I am on the contact page
    Then I should see the company's email address
    And I should see the company's phone number