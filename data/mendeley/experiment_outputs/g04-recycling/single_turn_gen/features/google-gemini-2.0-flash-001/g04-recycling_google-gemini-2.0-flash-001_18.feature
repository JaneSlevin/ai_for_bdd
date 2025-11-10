Feature: Transaction History

  As a user, I want to be able to check transaction history
  and keep a record of it, so that I can go back when needed.

  Scenario: View Transaction History with Existing Transactions
    Given I am logged in as a user with existing transactions
    When I navigate to the transaction history page
    Then I should see a list of my transactions
    And each transaction should display the date, amount, and description
    And the transactions should be sorted by date in descending order

  Scenario: View Transaction History with No Transactions
    Given I am logged in as a user with no previous transactions
    When I navigate to the transaction history page
    Then I should see a message indicating that there are no transactions
    And I should not see any transaction details

  Scenario: Filter Transaction History by Date Range
    Given I am logged in as a user with existing transactions
    When I navigate to the transaction history page
    And I select a date range from "01/01/2023" to "01/31/2023"
    Then I should only see transactions within the selected date range

  Scenario: View Transaction Details
    Given I am logged in as a user with existing transactions
    When I navigate to the transaction history page
    And I click on a specific transaction
    Then I should see detailed information about the transaction
    And the detailed information should include transaction ID, date, amount, description, and any other relevant details

  Scenario: Transaction History Pagination
    Given I am logged in as a user with more transactions than can be displayed on one page
    When I navigate to the transaction history page
    Then I should see a limited number of transactions per page
    And I should see pagination controls to navigate between pages
    And clicking on the next page should display the next set of transactions