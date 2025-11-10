Feature: Favorite Donation Centers

  As a user, I want to add donation centers as favorites on my profile,
  so that I can view them later.

  Scenario: User successfully adds a donation center to favorites
    Given I am a logged-in user
    And I am on the donation center details page for "Red Cross - Main Branch"
    When I click the "Add to Favorites" button
    Then I should see a success message "Donation center added to favorites!"
    And "Red Cross - Main Branch" should be displayed in my favorites list

  Scenario: User attempts to add the same donation center to favorites twice
    Given I am a logged-in user
    And I am on the donation center details page for "Salvation Army - Local Branch"
    And I have already added "Salvation Army - Local Branch" to my favorites
    When I click the "Add to Favorites" button
    Then I should see an error message "Donation center is already in your favorites"
    And "Salvation Army - Local Branch" should only appear once in my favorites list

  Scenario: User adds multiple donation centers to favorites
    Given I am a logged-in user
    And I am on the donation center details page for "Goodwill - Donation Center"
    When I click the "Add to Favorites" button
    And I navigate to the donation center details page for "Habitat for Humanity ReStore"
    And I click the "Add to Favorites" button
    Then I should see "Goodwill - Donation Center" and "Habitat for Humanity ReStore" in my favorites list

  Scenario: User must be logged in to add a donation center to favorites
    Given I am not a logged-in user
    And I am on the donation center details page for "St. Vincent de Paul - Charity Shop"
    When I click the "Add to Favorites" button
    Then I should be redirected to the login page
    And I should see a message "Please log in to add donation centers to your favorites"