Feature: Zip Code Validation

  Scenario: Entering an invalid zip code displays an error message
    Given I am on the address form
    When I enter "123" as the zip code
    And I click the submit button
    Then I should see an error message "Please enter a valid 5-digit zip code."

  Scenario: Entering a zip code with letters displays an error message
    Given I am on the address form
    When I enter "abcde" as the zip code
    And I click the submit button
    Then I should see an error message "Please enter a valid 5-digit zip code."
    
  Scenario: Entering a valid zip code does not display an error message
    Given I am on the address form
    When I enter "90210" as the zip code
    And I click the submit button
    Then I should not see an error message "Please enter a valid 5-digit zip code."

  Scenario: Entering a zip code with special characters displays an error message
    Given I am on the address form
    When I enter "123!@" as the zip code
    And I click the submit button
    Then I should see an error message "Please enter a valid 5-digit zip code."

  Scenario: Entering a zip code with leading spaces displays an error message
    Given I am on the address form
    When I enter "  1234" as the zip code
    And I click the submit button
    Then I should see an error message "Please enter a valid 5-digit zip code."