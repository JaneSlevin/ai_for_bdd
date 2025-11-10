Feature: Admin Dashboard Monitoring

  Scenario: View dashboard with overall site statuses
    Given I am logged in as an admin
    When I navigate to the dashboard
    Then I should see a summary of all site statuses
    And I should see the total number of active users across all sites
    And I should see the uptime percentage for each site

  Scenario: Filter sites by status
    Given I am on the admin dashboard
    When I select the filter for "Active" sites
    Then I should see only the sites that are currently active
    And the total count of active sites should be displayed

  Scenario: View detailed site information
    Given I am on the dashboard
    When I click on a specific site's name
    Then I should see detailed information about that site
    And I should see the current number of users online for that site
    And I should see the last updated timestamp for that site's status

  Scenario: Receive alerts for site downtime
    Given a site is down
    When I am on the admin dashboard
    Then I should see an alert indicating which site is down
    And I should see the time of the last downtime for that site

  Scenario: Check historical data for site performance
    Given I am on the admin dashboard
    When I select a site and view its historical performance
    Then I should see a graph displaying the site's uptime and user activity over the past week
    And I should see any incidents logged during that period