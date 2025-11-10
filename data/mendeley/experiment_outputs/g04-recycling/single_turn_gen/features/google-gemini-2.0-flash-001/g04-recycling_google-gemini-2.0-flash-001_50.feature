Feature: Recycling Facility Representative - Access to User Stats and Schedules

  As a recycling facility representative
  I want to have access to user stats and schedules
  So that I can adjust my hours and/or upgrade equipment and capacity in order to be able to accomodate larger amounts of recyclable materials

  Scenario: View Weekly User Count and Material Volume
    Given I am logged in as a recycling facility representative
    When I navigate to the "User Statistics" page
    Then I should see a graph displaying the weekly user count for the past month
    And I should see a table summarizing the total volume of each recyclable material type collected this week
    And I should see the data updated as of today

  Scenario: Filter User Statistics by Material Type
    Given I am logged in as a recycling facility representative
    And I am on the "User Statistics" page
    When I filter the statistics by "Plastic"
    Then I should see a graph displaying the weekly user count for users recycling plastic
    And I should see a table summarizing the total volume of plastic collected this week

  Scenario: View Upcoming Scheduled Drop-offs
    Given I am logged in as a recycling facility representative
    When I navigate to the "Scheduled Drop-offs" page
    Then I should see a list of all upcoming scheduled drop-offs for the next week
    And each entry should include the user's name, scheduled date/time, and material type
    And the list should be sorted by date and time, ascending

  Scenario: Download User Statistics Report as CSV
    Given I am logged in as a recycling facility representative
    And I am on the "User Statistics" page
    When I click the "Download CSV" button
    Then a CSV file should be downloaded to my computer
    And the CSV file should contain the weekly user count and material volume data for the past year