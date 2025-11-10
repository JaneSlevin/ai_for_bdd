Feature: Superuser Statistics Dashboard

  As a superuser
  I want to view users' stats
  So that I can view in real-time how many users have visited my recycling center information and their recyclable waste.

  Scenario: View total user visits to a recycling center page
    Given I am logged in as a superuser
    When I navigate to the statistics dashboard
    Then I should see the total number of visits to the "EcoCycle Hub" recycling center page displayed

  Scenario: View total recyclable waste (in kg) submitted across all users
    Given I am logged in as a superuser
    When I navigate to the statistics dashboard
    Then I should see the total weight of recycled waste (in kg) submitted by all users displayed

  Scenario: View a breakdown of recyclable waste by material type (plastic, paper, metal)
    Given I am logged in as a superuser
    When I navigate to the statistics dashboard
    Then I should see a breakdown of recycled waste by material type (plastic, paper, metal) displayed as a pie chart
    And the breakdown should include the weight (in kg) for each material type.

  Scenario: Filter statistics by date range (last week)
    Given I am logged in as a superuser
    When I navigate to the statistics dashboard
    And I select the date range "Last Week"
    Then I should see the statistics filtered for the last week

  Scenario: Verify real-time updates of user visits
    Given I am logged in as a superuser
    And I am on the statistics dashboard
    When a user visits the "EcoCycle Hub" recycling center page
    Then the total number of visits on the dashboard should increase by 1