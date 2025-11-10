Feature: Address Link Opens Google Maps in New Tab

  Scenario: Clicking the address link opens Google Maps in a new tab
    Given I am on the website
    When I click the address link
    Then a new tab should open
    And the new tab's URL should contain "google.com/maps"

  Scenario: The Google Maps URL contains the correct address
    Given I am on the website
    When I click the address link
    Then a new tab should open
    And the new tab's URL should contain the address "1600 Amphitheatre Parkway, Mountain View, CA"

  Scenario: Clicking the address link does not close the current tab
    Given I am on the website
    When I click the address link
    Then the original tab should still be open

  Scenario: Address link uses the correct HTML attribute to open in a new tab
    Given I am on the website
    Then the address link should have the attribute "target" with value "_blank"