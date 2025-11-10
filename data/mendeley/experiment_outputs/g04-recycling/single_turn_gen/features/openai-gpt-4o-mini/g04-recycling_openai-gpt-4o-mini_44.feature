Feature: View users' stats for recycling center

  As a superuser
  I want to view users' stats
  So that I can view in real-time how many users have visited my recycling center information and their recyclable waste

  Scenario: Superuser views total visits to the recycling center
    Given I am logged in as a superuser
    When I navigate to the user stats dashboard
    Then I should see the total number of visits to the recycling center information

  Scenario: Superuser views recyclable waste statistics
    Given I am logged in as a superuser
    When I select the option to view recyclable waste statistics
    Then I should see a breakdown of recyclable waste by type
    And I should see the total amount of recyclable waste submitted

  Scenario: Superuser filters user stats by date range
    Given I am logged in as a superuser
    When I select a specific date range
    Then I should see the user stats updated to reflect visits and waste for that date range

  Scenario: Superuser views real-time user visit updates
    Given I am logged in as a superuser
    When I monitor the user stats dashboard
    Then I should see the user visit count updating in real-time

  Scenario: Superuser accesses user stats for a specific recycling center
    Given I am logged in as a superuser
    When I select a specific recycling center from the list
    Then I should see the user stats specific to that recycling center