Feature: User Feedback and Complaints Management

  Scenario: Admin views all user feedback and complaints
    Given I am logged in as an admin
    When I navigate to the feedback and complaints section
    Then I should see a list of all user feedback and complaints
    And each feedback should display the user's name, date submitted, and content

  Scenario: Admin filters feedback by status
    Given I am logged in as an admin
    When I navigate to the feedback and complaints section
    And I select the "Resolved" status filter
    Then I should see only the feedback and complaints marked as resolved

  Scenario: Admin searches for specific feedback by user
    Given I am logged in as an admin
    When I navigate to the feedback and complaints section
    And I enter a user's name in the search bar
    Then I should see only feedback and complaints submitted by that user

  Scenario: Admin views details of a specific feedback
    Given I am logged in as an admin
    When I navigate to the feedback and complaints section
    And I click on a feedback entry
    Then I should see the full details of the feedback including any responses

  Scenario: Admin marks feedback as resolved
    Given I am logged in as an admin
    When I navigate to the feedback and complaints section
    And I select a feedback entry
    And I click on the "Mark as Resolved" button
    Then the feedback should be marked as resolved
    And I should see a confirmation message indicating the feedback has been updated