Feature: Open Google Maps from address link

  Scenario: User clicks on address link
    Given I am on the webpage displaying an address
    When I click on the address link
    Then a new tab should open with Google Maps displaying the address

  Scenario: Address link is visible on the page
    Given I am on the webpage
    When I look for the address link
    Then I should see the address link displayed prominently

  Scenario: Address link is clickable
    Given I am on the webpage displaying an address
    When I hover over the address link
    Then the cursor should change to a pointer indicating it is clickable

  Scenario: Address link opens in a new tab
    Given I am on the webpage displaying an address
    When I click on the address link
    Then the address should open in a new tab without affecting the current tab

  Scenario: Address link shows correct destination
    Given I am on the webpage displaying the address "1600 Amphitheatre Parkway, Mountain View, CA"
    When I click on the address link
    Then the new tab should display "1600 Amphitheatre Parkway, Mountain View, CA" on Google Maps