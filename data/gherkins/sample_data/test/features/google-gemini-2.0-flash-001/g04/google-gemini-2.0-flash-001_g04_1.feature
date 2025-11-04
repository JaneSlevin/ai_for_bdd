Feature: Address Link Opens Google Maps in New Tab

  Scenario: Clicking the address link opens Google Maps in a new tab
    Given I am on the page with the address link
    When I click on the address link
    Then a new tab should open
    And the new tab's URL should start with "https://www.google.com/maps"
    And the new tab's URL should contain the address as a query parameter