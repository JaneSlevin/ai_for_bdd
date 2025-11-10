Feature: Upload Weekly Schedule and Get Recycling Center Recommendations

  As a user,
  I want to upload my week's schedule,
  So that I can get recommendations for recycling centers that best fit my availability.

  Scenario: Successful upload of a valid schedule and receiving recommendations
    Given I am on the schedule upload page
    When I upload a valid schedule file named "schedule.csv"
    Then I should see a success message "Schedule uploaded successfully!"
    And I should see a list of recommended recycling centers
    And each recycling center should display its operating hours
    And each recycling center should display a compatibility score with my schedule

  Scenario: Uploading an invalid schedule file format
    Given I am on the schedule upload page
    When I upload an invalid schedule file named "schedule.txt"
    Then I should see an error message "Invalid file format. Only CSV files are allowed."
    And I should not see any recycling center recommendations

  Scenario: Uploading a schedule with overlapping time slots
    Given I am on the schedule upload page
    When I upload a schedule file named "overlapping_schedule.csv"
    Then I should see a warning message "Schedule contains overlapping time slots. Please review and correct."
    And I should still see a list of recommended recycling centers
    And the compatibility score should reflect the overlapping time slots

  Scenario: No recycling centers found matching availability
    Given I am on the schedule upload page
    When I upload a schedule file named "unavailable_schedule.csv"
    Then I should see a message "No recycling centers match your availability."
    And I should not see any recycling center recommendations

  Scenario: Error uploading the schedule due to server issue
    Given I am on the schedule upload page
    When I upload a valid schedule file named "schedule.csv"
    And the server returns an error
    Then I should see an error message "Failed to upload schedule. Please try again later."
    And I should not see any recycling center recommendations