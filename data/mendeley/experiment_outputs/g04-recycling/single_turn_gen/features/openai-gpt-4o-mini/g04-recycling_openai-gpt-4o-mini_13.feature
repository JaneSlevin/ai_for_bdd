Feature: User Documentation Access

  Scenario: Accessing user documentation from the homepage
    Given I am on the homepage of the website
    When I click on the "User Documentation" link
    Then I should be redirected to the user documentation page
    And I should see the title "User Documentation"

  Scenario: Viewing a specific section of user documentation
    Given I am on the user documentation page
    When I click on the "Getting Started" section
    Then I should be taken to the "Getting Started" section
    And I should see the content related to starting with the web app

  Scenario: Searching for a topic in the user documentation
    Given I am on the user documentation page
    When I enter "account settings" into the search bar
    And I click on the "Search" button
    Then I should see a list of results related to "account settings"

  Scenario: Navigating back to the homepage from user documentation
    Given I am on the user documentation page
    When I click on the "Home" link
    Then I should be redirected to the homepage
    And I should see the homepage content

  Scenario: Checking the last updated date of the documentation
    Given I am on the user documentation page
    When I scroll to the bottom of the page
    Then I should see the last updated date for the documentation