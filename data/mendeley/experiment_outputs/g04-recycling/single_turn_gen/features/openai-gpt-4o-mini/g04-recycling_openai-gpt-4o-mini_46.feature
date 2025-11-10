Feature: Admin Dashboard for Usage Stats and Locations

  Scenario: View dashboard with usage statistics
    Given I am logged in as an admin
    When I navigate to the admin dashboard
    Then I should see the total number of drop-offs in the current month
    And I should see a graph representing drop-offs by week

  Scenario: Filter drop-off locations by neighbourhood
    Given I am logged in as an admin
    When I select a neighbourhood from the dropdown menu
    Then I should see the total number of drop-offs in that neighbourhood
    And I should see a list of facilities in that neighbourhood

  Scenario: Identify neighbourhoods with the largest number of drop-offs
    Given I am logged in as an admin
    When I view the neighbourhood drop-off statistics
    Then I should see a ranked list of neighbourhoods by the number of drop-offs
    And the neighbourhood with the largest drop-offs should be highlighted

  Scenario: Download usage stats report
    Given I am logged in as an admin
    When I click on the "Download Report" button
    Then I should receive a CSV file containing usage stats and locations
    And the report should include drop-off counts by neighbourhood

  Scenario: View historical usage data
    Given I am logged in as an admin
    When I select a date range from the date picker
    Then I should see the usage statistics for that date range
    And I should be able to compare it with previous periods