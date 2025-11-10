Feature: Website User Interface and User Experience

  As a user
  I want to have a great UI and UX from the sites
  So that I have a pleasant experience when navigating through them

  Scenario: Website loads quickly and displays key content above the fold
    Given I am on the website homepage
    Then the page should load in less than 3 seconds
    And the main navigation menu should be visible
    And the headline and a brief description should be visible without scrolling

  Scenario: Website navigation is intuitive and easy to use
    Given I am on the website homepage
    When I click on the "Products" link in the navigation menu
    Then I should be redirected to the "Products" page
    And the "Products" page should display a list of available products
    And each product should have a clear title and image

  Scenario: Website search functionality returns relevant results
    Given I am on the website homepage
    When I enter "Product A" in the search field
    And I click the search button
    Then I should be redirected to the search results page
    And the search results page should display products related to "Product A"
    And "Product A" should be highlighted in the search results

  Scenario: Website is responsive and adapts to different screen sizes
    Given I am on the website homepage
    When I resize the browser window to a mobile size
    Then the website layout should adapt to fit the screen
    And the navigation menu should collapse into a hamburger menu
    And all content should be readable and accessible

  Scenario: Website includes clear and helpful error messages
    Given I am on the account registration page
    When I submit the form with an invalid email address
    Then an error message should be displayed indicating the email address is invalid
    And the error message should be clear and easy to understand