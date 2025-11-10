Feature: UI/UX Lessons for Developers

  As a developer
  I want to attend some UI/UX lessons
  So that I can develop awesome and beautiful features website

  Scenario: Successfully enrolling in a UI/UX course
    Given I am a logged-in developer
    When I navigate to the UI/UX courses page
    And I select a course named "Introduction to UI/UX Design"
    And I click the "Enroll Now" button
    Then I should be successfully enrolled in the course
    And I should see a confirmation message "You are now enrolled in Introduction to UI/UX Design"

  Scenario: Viewing course details before enrolling
    Given I am a logged-in developer
    When I navigate to the UI/UX courses page
    And I click on the course "Advanced UX Principles"
    Then I should see the course details page
    And I should see the course description
    And I should see the instructor's name
    And I should see the course syllabus

  Scenario: Attempting to enroll in a course when not logged in
    Given I am not logged in
    When I navigate to the UI/UX courses page
    And I select a course named "Accessibility Best Practices"
    And I click the "Enroll Now" button
    Then I should be redirected to the login page
    And I should see a message "Please log in to enroll in courses"

  Scenario: Successfully completing a UI/UX course and receiving a certificate
    Given I am a logged-in developer
    And I am enrolled in the course "UI Design Fundamentals"
    When I complete all the modules in the course
    Then I should receive a certificate of completion
    And I should be able to download the certificate

  Scenario: Searching for UI/UX courses by keyword
    Given I am a logged-in developer
    When I search for "user interface" in the course search bar
    Then I should see a list of courses related to "user interface"
    And the list should include courses like "Mastering User Interface Design" and "Advanced User Interface Techniques"