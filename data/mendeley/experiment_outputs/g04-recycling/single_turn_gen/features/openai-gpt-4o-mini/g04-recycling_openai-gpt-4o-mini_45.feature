Feature: Reply to user questions

  As a superuser,
  I want to reply to user questions,
  So that I can answer any questions about my recycling center.

  Scenario: Superuser replies to a user question
    Given there is a user question in the system
    And I am logged in as a superuser
    When I navigate to the user questions section
    And I select a question to reply to
    And I enter a response
    And I submit my reply
    Then the reply should be saved in the system
    And the user should be notified of my reply

  Scenario: Superuser attempts to reply with an empty response
    Given there is a user question in the system
    And I am logged in as a superuser
    When I navigate to the user questions section
    And I select a question to reply to
    And I leave the response field empty
    And I attempt to submit my reply
    Then I should see an error message indicating that the response cannot be empty

  Scenario: Superuser views previously answered questions
    Given I am logged in as a superuser
    When I navigate to the user questions section
    Then I should see a list of questions
    And I should see any previously answered questions with their replies

  Scenario: Superuser receives notifications for new user questions
    Given I am logged in as a superuser
    When a new user question is submitted
    Then I should receive a notification about the new question
    
  Scenario: Superuser replies to a question with formatting
    Given there is a user question in the system
    And I am logged in as a superuser
    When I navigate to the user questions section
    And I select a question to reply to
    And I enter a formatted response with markdown
    And I submit my reply
    Then the reply should be displayed with the correct formatting in the system