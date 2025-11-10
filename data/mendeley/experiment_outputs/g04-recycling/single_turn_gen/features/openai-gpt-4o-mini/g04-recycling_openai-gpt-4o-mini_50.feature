Feature: Access to user stats and schedules for recycling facility representatives

  Scenario: View user statistics
    Given I am logged in as a recycling facility representative
    When I navigate to the user statistics page
    Then I should see the total number of users
    And I should see the average amount of recyclable materials submitted per user
    And I should see the trends of user submissions over the last six months

  Scenario: View schedules of recycling submissions
    Given I am logged in as a recycling facility representative
    When I navigate to the schedules page
    Then I should see a calendar view of scheduled recycling submissions
    And I should see the total number of submissions scheduled for each day
    And I should see any overlapping submission times

  Scenario: Adjust facility hours based on user stats
    Given I have accessed the user statistics
    When I analyze the peak submission times
    And I decide to extend facility hours on peak days
    Then I should be able to submit a request to update facility hours
    And I should receive a confirmation of my request

  Scenario: Request for equipment upgrade
    Given I have accessed the user statistics and schedules
    When I determine the need for additional equipment based on user activity
    And I select the equipment needed for upgrade
    Then I should be able to submit a request for the equipment upgrade
    And I should receive a confirmation of my request

  Scenario: Generate a report on user activity
    Given I am logged in as a recycling facility representative
    When I navigate to the report generation section
    And I select the date range for the report
    Then I should be able to generate a report on user activity
    And I should be able to download the report as a PDF