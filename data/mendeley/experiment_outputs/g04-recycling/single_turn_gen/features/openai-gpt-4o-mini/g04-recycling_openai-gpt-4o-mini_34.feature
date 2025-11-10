Feature: Bootstrap Integration for Website Development

  Scenario: Successfully integrate Bootstrap into a new project
    Given I have created a new HTML project
    When I add the Bootstrap CSS and JS links to the project
    Then the Bootstrap styles should be applied to the project

  Scenario: Verify Bootstrap components are functional
    Given I have integrated Bootstrap into my HTML project
    When I add a Bootstrap button component to the HTML
    Then the button should render with Bootstrap styling and be clickable

  Scenario: Customize Bootstrap variables
    Given I have integrated Bootstrap into my project
    When I modify the Bootstrap variables for primary color
    Then the changes should reflect across all Bootstrap components that use the primary color

  Scenario: Ensure responsiveness with Bootstrap grid system
    Given I have a Bootstrap integrated project with a grid layout
    When I resize the browser window
    Then the components should adjust according to the Bootstrap responsive grid rules

  Scenario: Test Bootstrap's JavaScript components
    Given I have integrated Bootstrap and included jQuery in my project
    When I add a Bootstrap modal component to the HTML
    And I trigger the modal to open
    Then the modal should display correctly and be dismissible