Feature: Browse Environment-Friendly Facilities

  As a user,
  I want to browse through the list of facilities
  So that I can identify which ones are environment-friendly

  Scenario: View list of all facilities
    Given I am on the facilities browsing page
    When I request to view the list of facilities
    Then I should see a list of all available facilities

  Scenario: Identify environment-friendly facilities
    Given I am on the facilities browsing page
    When I filter the list by environment-friendly facilities
    Then I should see only the facilities marked as environment-friendly

  Scenario: View facility details
    Given I am viewing the list of facilities
    When I select an environment-friendly facility
    Then I should see the details of that facility, including its environmental certifications

  Scenario: No environment-friendly facilities available
    Given I am on the facilities browsing page
    When there are no environment-friendly facilities available
    Then I should see a message indicating that no environment-friendly facilities are available

  Scenario: Search for a specific facility
    Given I am on the facilities browsing page
    When I search for a facility by name
    Then I should see the facility details if it exists in the list