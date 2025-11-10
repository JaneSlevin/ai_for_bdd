Feature: Upload weekly schedule for recycling center recommendations

  Scenario: Successfully upload a valid week's schedule
    Given the user is logged into the application
    When the user uploads a valid week's schedule file
    Then the system should confirm the upload was successful
    And the user should see a list of recommended recycling centers based on their availability

  Scenario: Attempt to upload an invalid schedule format
    Given the user is logged into the application
    When the user uploads an invalid schedule file format
    Then the system should display an error message indicating the file format is not supported
    And the user should not see any recommendations

  Scenario: Upload a schedule without any available time slots
    Given the user is logged into the application
    When the user uploads a week's schedule with no available time slots
    Then the system should display a message indicating no available time slots for recommendations
    And the user should see a prompt to modify their schedule

  Scenario: Attempt to upload a schedule when not logged in
    Given the user is not logged into the application
    When the user attempts to upload a week's schedule file
    Then the system should redirect the user to the login page
    And the user should receive a message prompting them to log in to upload their schedule

  Scenario: Upload a schedule and receive recommendations for multiple recycling centers
    Given the user is logged into the application
    When the user uploads a valid week's schedule file with multiple available time slots
    Then the system should display multiple recommended recycling centers
    And each recycling center should show its address and operating hours