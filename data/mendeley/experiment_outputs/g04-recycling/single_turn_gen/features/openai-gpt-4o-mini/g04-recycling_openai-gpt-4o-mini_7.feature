Feature: Manage Favorite Donation Centers

  As a user
  I want to add donation centers as favorites on my profile
  So that I can view them later

  Scenario: Successfully adding a donation center to favorites
    Given I am logged into my account
    And I am on the donation center page
    When I click on the "Add to Favorites" button for a donation center
    Then the donation center should be added to my favorites list
    And I should see a confirmation message "Donation center added to favorites."

  Scenario: Viewing my favorite donation centers
    Given I am logged into my account
    And I have added at least one donation center to my favorites
    When I navigate to my profile and select "Favorites"
    Then I should see a list of my favorite donation centers

  Scenario: Attempting to add the same donation center to favorites again
    Given I am logged into my account
    And I have already added a donation center to my favorites
    When I click on the "Add to Favorites" button for that donation center again
    Then I should see a message "This donation center is already in your favorites."

  Scenario: Removing a donation center from favorites
    Given I am logged into my account
    And I have added a donation center to my favorites
    When I click on the "Remove from Favorites" button for that donation center
    Then the donation center should be removed from my favorites list
    And I should see a confirmation message "Donation center removed from favorites."

  Scenario: Trying to add a donation center to favorites while not logged in
    Given I am on the donation center page
    When I click on the "Add to Favorites" button for a donation center
    Then I should be redirected to the login page
    And I should see an error message "You need to log in to add favorites."