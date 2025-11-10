Feature: Transaction History

  Scenario: User views transaction history
    Given the user is logged into their account
    When the user navigates to the "Transaction History" section
    Then the user should see a list of their recent transactions
    And each transaction should display the date, amount, and description

  Scenario: User filters transaction history by date range
    Given the user is on the "Transaction History" page
    When the user selects a start date and an end date
    And clicks on the "Filter" button
    Then the transaction history should update to show only transactions within the selected date range

  Scenario: User exports transaction history
    Given the user is viewing their transaction history
    When the user clicks on the "Export" button
    Then the transaction history should be downloaded as a CSV file

  Scenario: User searches for a specific transaction
    Given the user is on the "Transaction History" page
    When the user enters a keyword in the search bar
    And clicks on the "Search" button
    Then the transaction history should display only transactions that match the search keyword

  Scenario: User views details of a specific transaction
    Given the user is on the "Transaction History" page
    When the user clicks on a specific transaction
    Then the user should see the details of that transaction including date, amount, description, and status