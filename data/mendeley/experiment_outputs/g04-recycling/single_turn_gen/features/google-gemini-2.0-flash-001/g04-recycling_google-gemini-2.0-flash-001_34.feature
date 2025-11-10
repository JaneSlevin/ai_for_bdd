Feature: Bootstrap Integration for Simplified Website Design

  As a developer
  I want to use Bootstrap
  So that I can easily design my website

  Scenario: Verify Bootstrap CSS is correctly linked
    Given I have a basic HTML file
    When I include the Bootstrap CSS link in the <head> section
    Then the web page should render with Bootstrap default styles, such as a different default font
    And the web page should not show any console errors related to CSS loading

  Scenario: Verify Bootstrap JavaScript is correctly linked
    Given I have a basic HTML file
    When I include the Bootstrap JavaScript and Popper.js links before the closing <body> tag
    Then Bootstrap JavaScript components like Modals should function correctly
    And the web page should not show any console errors related to JavaScript loading

  Scenario: Utilize Bootstrap grid system for responsive layout
    Given I have an HTML file
    When I include Bootstrap CSS
    And I create a layout using Bootstrap's grid system (e.g., row and col-* classes)
    Then the layout should adapt to different screen sizes (desktop, tablet, mobile)
    And the elements should be arranged appropriately on each screen size

  Scenario: Implement Bootstrap components like buttons or navigation bars
    Given I have an HTML file
    When I include Bootstrap CSS and JavaScript
    And I implement a Bootstrap button with a specific class (e.g., "btn btn-primary")
    Then the button should render with the correct Bootstrap styling
    And the button should respond to user interactions (e.g., hover effect)

  Scenario: Customize Bootstrap theme using Bootstrap variables
    Given I have an HTML file and a custom CSS file
    When I import Bootstrap's source SCSS files into my custom CSS
    And I override Bootstrap variables (e.g., $primary color)
    Then the Bootstrap components should render using my custom theme colors
    And the overridden styles should take precedence over the default Bootstrap styles