Feature: Feedback Management - Admin View

  As an admin
  I want to be able to read users' feedback and complaints
  So that we can add more features and keep improving the service we provide to them.

  Scenario: Admin can access the feedback management dashboard
    Given I am logged in as an admin
    When I navigate to the "Feedback Management" page
    Then I should see a dashboard with feedback summaries

  Scenario: Admin can view a list of all feedback entries
    Given I am on the "Feedback Management" page
    When I view the list of feedback entries
    Then I should see a table with columns for "User", "Date", "Category", and "Comment"
    And the table should be sorted by date in descending order

  Scenario: Admin can filter feedback entries by category
    Given I am on the "Feedback Management" page
    When I select "Bug Report" from the category filter
    Then I should only see feedback entries with the category "Bug Report"

  Scenario: Admin can view the details of a specific feedback entry
    Given I am on the "Feedback Management" page
    And I see a feedback entry with the comment "The search function is not working"
    When I click on the "View Details" button for that entry
    Then I should see a detailed view with the full comment text
    And I should see the user's email address
    And I should see the date and time the feedback was submitted

  Scenario: Admin can search for feedback entries by keyword
    Given I am on the "Feedback Management" page
    When I enter "payment" into the search field
    And I press "Enter"
    Then I should only see feedback entries containing the word "payment"