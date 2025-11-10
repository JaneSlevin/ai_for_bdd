Feature: Responsive Website Access

  As a user
  I want to be able to access the site and do all the other stuffs on all of my electronic devices
  So that I can use the site regardless of the device I have

  Scenario: Accessing the website on a desktop computer
    Given I am on a desktop computer
    When I navigate to the website homepage
    Then I should see the full desktop version of the website
    And the website elements should be correctly displayed and functional

  Scenario: Accessing the website on a tablet in portrait mode
    Given I am on a tablet in portrait mode with a screen width of 768 pixels
    When I navigate to the website homepage
    Then I should see the tablet-optimized version of the website
    And the navigation menu should be responsive and accessible
    And the website elements should be correctly displayed and functional

  Scenario: Accessing the website on a smartphone in landscape mode
    Given I am on a smartphone in landscape mode with a screen width of 600 pixels
    When I navigate to the website homepage
    Then I should see the mobile-optimized version of the website
    And the navigation menu should be collapsed into a hamburger menu
    And the website elements should be correctly displayed and functional

  Scenario: Accessing the website on a smartphone in portrait mode
    Given I am on a smartphone in portrait mode with a screen width of 375 pixels
    When I navigate to the website homepage
    Then I should see the mobile-optimized version of the website
    And the navigation menu should be collapsed into a hamburger menu
    And the website elements should be correctly displayed and functional

  Scenario: Verify form submission on a mobile device
    Given I am on a smartphone in portrait mode
    When I navigate to a page with a contact form
    And I fill in the form with valid data
    And I submit the form
    Then I should see a success message confirming the submission