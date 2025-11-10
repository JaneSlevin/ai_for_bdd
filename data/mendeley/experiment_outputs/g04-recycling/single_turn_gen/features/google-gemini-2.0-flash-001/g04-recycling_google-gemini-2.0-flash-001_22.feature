Feature: Admin Dashboard - Site Status Monitoring

  As an admin
  I want to view a dashboard that monitors all the sites' statuses
  So that I can have a sense of what people are doing on our sites and know the service status

  Scenario: Dashboard displays all registered sites with their status
    Given I am logged in as an admin
    When I navigate to the admin dashboard
    Then I should see a list of all registered sites
    And each site should display its current status

  Scenario: Site status is accurately reflected on the dashboard
    Given I am logged in as an admin
    And Site "Example Website" is currently "Online"
    And Site "Another Website" is currently "Offline"
    When I navigate to the admin dashboard
    Then I should see "Example Website" with status "Online"
    And I should see "Another Website" with status "Offline"

  Scenario: Dashboard displays active user count for each site
    Given I am logged in as an admin
    And Site "Example Website" has 15 active users
    And Site "Another Website" has 2 active users
    When I navigate to the admin dashboard
    Then I should see "Example Website" displaying "15 active users"
    And I should see "Another Website" displaying "2 active users"

  Scenario: Dashboard displays server response time for each site
    Given I am logged in as an admin
    And Site "Example Website" has a server response time of 200 ms
    And Site "Another Website" has a server response time of 500 ms
    When I navigate to the admin dashboard
    Then I should see "Example Website" displaying a response time of "200 ms"
    And I should see "Another Website" displaying a response time of "500 ms"

  Scenario: Dashboard indicates when a site's status is unknown
    Given I am logged in as an admin
    And Site "Mystery Website" has an "Unknown" status
    When I navigate to the admin dashboard
    Then I should see "Mystery Website" with status "Unknown"