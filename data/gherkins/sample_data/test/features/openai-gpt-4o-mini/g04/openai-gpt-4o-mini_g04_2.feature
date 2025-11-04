Feature: Anonymous viewing of public information about recycling centers

  Scenario: User views recycling centers without an account
    Given I am on the homepage of the recycling information website
    When I navigate to the section for recycling centers
    Then I should be able to see a list of public recycling centers near me
    And I should not be prompted to create an account to view this information

  Scenario: User searches for recycling centers by location
    Given I am on the homepage of the recycling information website
    When I enter my location in the search bar for recycling centers
    And I click the "Search" button
    Then I should see a list of public recycling centers near my location
    And I should not be asked to log in or create an account