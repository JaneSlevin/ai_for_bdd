Feature: Admin Dashboard - Usage Statistics and Locations

  As an admin
  I want to be able to have a dashboard that shows usage stats and locations
  So that I can identify the neighborhoods with the largest number of drop-offs and to try getting more facilities involved

  Scenario: Dashboard displays overall usage statistics
    Given I am logged in as an admin
    When I navigate to the dashboard
    Then I should see a summary of overall usage statistics
    And the summary should include the total number of drop-offs
    And the summary should include the total number of users
    And the summary should include the total number of facilities

  Scenario: Dashboard displays drop-offs by neighborhood
    Given I am logged in as an admin
    When I navigate to the dashboard
    Then I should see a map displaying drop-off locations
    And the map should be clustered by neighborhood
    And the map should indicate the number of drop-offs in each neighborhood

  Scenario: Dashboard allows filtering drop-offs by date range
    Given I am logged in as an admin
    When I navigate to the dashboard
    Then I should see a date range filter
    When I select a date range from "01/01/2023" to "01/31/2023"
    Then the map should only display drop-offs within the selected date range
    And the overall usage statistics should reflect the selected date range

  Scenario: Dashboard highlights neighborhoods with highest drop-off density
    Given I am logged in as an admin
    When I navigate to the dashboard
    Then I should see a map displaying drop-offs by neighborhood
    And the neighborhoods with the highest drop-off density should be visually highlighted
    And I should be able to hover over a highlighted neighborhood to see the exact number of drop-offs

  Scenario: Dashboard provides a list of facilities and their drop-off counts
    Given I am logged in as an admin
    When I navigate to the dashboard
    Then I should see a table listing all facilities
    And the table should display the number of drop-offs at each facility
    And the table should be sortable by the number of drop-offs