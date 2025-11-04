Feature: Open Google Maps from address link

  Scenario: User clicks on the address link
    Given I am on the webpage with an address displayed
    When I click on the address
    Then a new tab should open with Google Maps displaying the address
    And the new tab should be titled "Google Maps"