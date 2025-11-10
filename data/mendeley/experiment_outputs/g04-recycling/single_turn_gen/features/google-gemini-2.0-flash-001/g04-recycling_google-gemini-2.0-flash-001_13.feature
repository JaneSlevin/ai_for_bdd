Feature: User Documentation

  As a user, I want to view user documentation for the website, 
  so that I know how to use the web app.

  Scenario: Accessing the User Documentation from the Homepage
    Given I am on the homepage
    When I click on the "Help" link in the navigation bar
    Then I should be redirected to the documentation page
    And I should see the documentation title "User Guide"

  Scenario: Searching for a specific topic in the Documentation
    Given I am on the documentation page
    When I enter "account settings" in the search bar
    And I press Enter
    Then I should see search results related to "account settings"
    And the first result should contain the phrase "managing your account"

  Scenario: Navigating through documentation sections
    Given I am on the documentation page
    When I click on the "Getting Started" section
    Then I should see the content for the "Getting Started" section
    And I should see a heading that says "Welcome to the Application"

  Scenario: Documentation Link from Footer
    Given I am on the homepage
    When I scroll to the bottom of the page
    And I click on the "Documentation" link in the footer
    Then I should be redirected to the documentation page

  Scenario: Verifying a specific instruction on the documentation page
    Given I am on the documentation page
    When I navigate to the section "Creating a New Project"
    Then I should see the instruction "Click the 'New Project' button"