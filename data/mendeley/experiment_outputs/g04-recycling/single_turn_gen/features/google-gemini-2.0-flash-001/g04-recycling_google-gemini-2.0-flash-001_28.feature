Feature: Rewards System

  As a user, I want to be able to receive tempting rewards, so that I have a reason to use the website.

  Scenario: User receives a welcome reward after registration
    Given I am a new user
    When I register on the website
    Then I should receive a welcome reward
    And the reward should be a 10% discount code

  Scenario: User earns points for completing a purchase
    Given I am a registered user with 0 points
    When I purchase a product for $50
    Then I should earn 50 points
    And my total points balance should be 50

  Scenario: User redeems points for a reward
    Given I am a registered user with 100 points
    When I redeem 100 points for a $5 gift card
    Then I should receive a $5 gift card
    And my total points balance should be 0

  Scenario: User receives a birthday reward
    Given today is my birthday
    And I am a registered user
    When I log in to the website
    Then I should receive a birthday reward
    And the reward should be free shipping on my next order