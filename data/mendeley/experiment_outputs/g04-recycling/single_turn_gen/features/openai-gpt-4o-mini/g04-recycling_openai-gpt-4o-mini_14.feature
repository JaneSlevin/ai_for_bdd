Feature: Invalid Zip Code Feedback

  Scenario: User enters a zip code with letters
    Given the user is on the address input page
    When the user enters "ABCDE" as the zip code
    And clicks the submit button
    Then the user should see a feedback message "Please enter a valid zip code."

  Scenario: User enters a zip code with special characters
    Given the user is on the address input page
    When the user enters "1234@!" as the zip code
    And clicks the submit button
    Then the user should see a feedback message "Please enter a valid zip code."

  Scenario: User enters a zip code that is too short
    Given the user is on the address input page
    When the user enters "123" as the zip code
    And clicks the submit button
    Then the user should see a feedback message "Zip code must be 5 digits long."

  Scenario: User enters a zip code that is too long
    Given the user is on the address input page
    When the user enters "1234567" as the zip code
    And clicks the submit button
    Then the user should see a feedback message "Zip code must be 5 digits long."

  Scenario: User leaves the zip code field empty
    Given the user is on the address input page
    When the user leaves the zip code field empty
    And clicks the submit button
    Then the user should see a feedback message "Zip code cannot be empty."