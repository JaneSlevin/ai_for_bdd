Feature: Recycling Facility Hours

  As a user, I want to be able to get the hours of each recycling facility
  so that I can arrange drop-offs on my off days or during after-work hours.

  Scenario: View recycling facility hours on a facility details page
    Given I am on the details page for recycling facility "EcoRecycle Center"
    Then I should see a section displaying "Hours of Operation"
    And I should see the hours for Monday as "9:00 AM - 5:00 PM"
    And I should see the hours for Tuesday as "9:00 AM - 5:00 PM"
    And I should see the hours for Wednesday as "9:00 AM - 5:00 PM"
    And I should see the hours for Thursday as "9:00 AM - 5:00 PM"
    And I should see the hours for Friday as "9:00 AM - 5:00 PM"
    And I should see the hours for Saturday as "10:00 AM - 2:00 PM"
    And I should see the hours for Sunday as "Closed"

  Scenario: View recycling facility hours when a facility is closed on a particular day
    Given I am on the details page for recycling facility "Green Solutions Depot"
    Then I should see a section displaying "Hours of Operation"
    And I should see the hours for Sunday as "Closed"

  Scenario: Verify that facility hours are displayed in the correct time zone
    Given I am on the details page for recycling facility "Sustainable Recycling Inc."
    Then I should see a section displaying "Hours of Operation"
    And the hours displayed should be in the "Eastern Time" time zone

  Scenario: Handle cases when facility hours are not available.
    Given I am on the details page for recycling facility "Unknown Recycling"
    Then I should see a section displaying "Hours of Operation"
    And I should see a message indicating "Hours of operation are currently unavailable. Please contact the facility directly."

  Scenario: Facility has different operating hours on holidays
    Given I am on the details page for recycling facility "Community Recycling Hub"
    When today is "Thanksgiving"
    Then I should see the "Holiday Hours" section displaying "Closed"
    When today is not a holiday
    Then I should see the hours for Monday as "8:00 AM - 6:00 PM"