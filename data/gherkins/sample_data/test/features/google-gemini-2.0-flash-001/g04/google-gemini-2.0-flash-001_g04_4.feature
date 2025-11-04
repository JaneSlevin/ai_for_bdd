Feature: Display Recycling Facility Hours

  Scenario: Recycling facility hours are displayed on the facility details page
    Given I am on the details page of a recycling facility named "Green Solutions"
    Then I should see the operating hours for "Green Solutions"
    And the operating hours should include days of the week
    And the operating hours should include opening and closing times
    And the operating hours should be displayed in a human-readable format

  Scenario: Recycling facility hours are displayed in the search results
    Given I have searched for recycling facilities near zip code "12345"
    Then the search results should display a list of recycling facilities
    And for each recycling facility I should see the operating hours
    And the operating hours should include days of the week
    And the operating hours should include opening and closing times
    And the operating hours should be displayed in a human-readable format

  Scenario: Closed recycling facility displays "Closed" for current day
    Given I am on the details page of a recycling facility named "Closed Today"
    And "Closed Today" is closed on the current day of the week
    Then I should see "Closed" displayed for the current day for "Closed Today"

  Scenario: Recycling center has no hours listed
    Given I am on the details page of a recycling facility named "Unknown Hours"
    And "Unknown Hours" has no operating hours listed
    Then I should see "Hours Not Available" displayed for "Unknown Hours"