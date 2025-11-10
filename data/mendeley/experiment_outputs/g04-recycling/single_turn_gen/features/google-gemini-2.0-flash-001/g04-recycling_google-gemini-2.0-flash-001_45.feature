Feature: Superuser Replies to User Questions

  As a superuser, I want to reply to user questions,
  so that I can answer any questions about my recycling center.

  Scenario: Superuser successfully replies to a user question
    Given I am logged in as a superuser
    And there is a user question with the subject "Accepted Materials" and body "What types of plastic do you accept?"
    When I navigate to the questions page
    Then I should see the question "Accepted Materials"
    When I click on the question "Accepted Materials"
    Then I should see the question details
    When I enter "We accept plastics #1, #2, and #5." in the reply field
    And I click the "Submit Reply" button
    Then I should see a success message indicating the reply was submitted
    And the question status should be updated to "Answered"
    And the user should receive an email notification about the reply

  Scenario: Superuser replies to a question with invalid input (empty reply)
    Given I am logged in as a superuser
    And there is a user question with the subject "Hours of Operation" and body "What are your hours?"
    When I navigate to the questions page
    And I click on the question "Hours of Operation"
    Then I should see the question details
    When I click the "Submit Reply" button without entering any text in the reply field
    Then I should see an error message indicating that the reply cannot be empty

  Scenario: Superuser edits an existing reply to a user question
    Given I am logged in as a superuser
    And there is a user question with the subject "Location" and body "Where are you located?"
    And I have already replied to the question with "We are located at 123 Main St."
    When I navigate to the questions page
    And I click on the question "Location"
    Then I should see the question details
    And I should see my existing reply "We are located at 123 Main St."
    When I edit the reply to "We are located at 123 Main St, Anytown USA"
    And I click the "Update Reply" button
    Then I should see a success message indicating the reply was updated
    And I should see the updated reply "We are located at 123 Main St, Anytown USA"

  Scenario: Superuser attempts to reply to a question without being logged in
    Given I am not logged in
    And there is a user question with the subject "Electronics Recycling" and body "Do you recycle electronics?"
    When I attempt to navigate to the question details page for "Electronics Recycling"
    Then I should be redirected to the login page
    And I should see a message indicating I need to be logged in as a superuser to access this page