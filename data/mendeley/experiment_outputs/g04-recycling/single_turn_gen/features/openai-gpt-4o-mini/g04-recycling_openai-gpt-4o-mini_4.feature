Feature: Recycling Facility Hours

  As a user,
  I want to be able to get the hours of each recycling facility,
  So that I can arrange drop-offs on my off days or during after-work hours.

  Scenario: View operating hours for a specific recycling facility
    Given I am on the recycling facility hours page
    When I select the "Green Valley Recycling Center"
    Then I should see the operating hours displayed as "Monday to Friday: 8 AM - 6 PM; Saturday: 9 AM - 4 PM; Closed on Sunday"

  Scenario: Search for facility hours by location
    Given I am on the recycling facility hours page
    When I enter "Downtown" in the search bar
    And I click the search button
    Then I should see a list of recycling facilities in Downtown with their respective operating hours

  Scenario: View hours for a facility on a holiday
    Given I am on the recycling facility hours page
    When I select the "Riverbend Recycling Facility"
    And the current date is "2023-12-25"
    Then I should see the operating hours displayed as "Closed for Christmas"

  Scenario: Compare hours of multiple recycling facilities
    Given I am on the recycling facility hours page
    When I select "Green Valley Recycling Center" and "Riverbend Recycling Facility"
    Then I should see a comparison table displaying the operating hours for both facilities

  Scenario: Receive an error message for an invalid facility selection
    Given I am on the recycling facility hours page
    When I select a facility that does not exist
    Then I should see an error message that says "Facility not found"