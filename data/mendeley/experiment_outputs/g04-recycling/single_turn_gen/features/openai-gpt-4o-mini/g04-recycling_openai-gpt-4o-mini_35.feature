Feature: UI/UX Lessons Enrollment

  Scenario: Successful enrollment in a UI/UX lesson
    Given I am a registered developer
    When I navigate to the UI/UX lessons page
    And I select a lesson titled "Introduction to UI Design"
    And I click on the "Enroll" button
    Then I should see a confirmation message "You have successfully enrolled in Introduction to UI Design."

  Scenario: Attempting to enroll in a full lesson
    Given I am a registered developer
    And the lesson titled "Advanced UX Techniques" is full
    When I navigate to the UI/UX lessons page
    And I select the lesson titled "Advanced UX Techniques"
    And I click on the "Enroll" button
    Then I should see an error message "This lesson is currently full. Please choose another lesson."

  Scenario: Viewing a list of available lessons
    Given I am a registered developer
    When I navigate to the UI/UX lessons page
    Then I should see a list of available lessons
    And each lesson should display a title and a brief description

  Scenario: Canceling enrollment in a lesson
    Given I am a registered developer
    And I have enrolled in the lesson titled "UX Research Methods"
    When I navigate to my enrolled lessons page
    And I click on the "Cancel Enrollment" button for "UX Research Methods"
    Then I should see a confirmation message "You have successfully canceled your enrollment in UX Research Methods."

  Scenario: Searching for a specific UI/UX lesson
    Given I am a registered developer
    When I navigate to the UI/UX lessons page
    And I enter "Design Principles" in the search bar
    Then I should see a list of lessons that match the search term "Design Principles"
    And the lessons should include "Fundamentals of Design Principles"