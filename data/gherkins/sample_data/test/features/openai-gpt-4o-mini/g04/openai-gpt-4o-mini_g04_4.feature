Feature: View hours of operation for recycling facilities

  Scenario: User views hours for a specific recycling facility
    Given I am on the recycling facilities page
    And I see a list of nearby recycling facilities
    When I click on a specific recycling facility
    Then I should see the hours of operation for that facility

  Scenario: User sees hours for all facilities in the list
    Given I am on the recycling facilities page
    When I view the list of nearby recycling facilities
    Then I should see the hours of operation displayed next to each facility

  Scenario: User views hours for a facility that is closed
    Given I am on the recycling facilities page
    And I select a recycling facility that is currently closed
    When I view the hours of operation
    Then I should see a message indicating that the facility is closed and its operating hours for the next open day