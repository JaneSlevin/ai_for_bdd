Feature: Rewards System

  Scenario: User receives a reward after completing a task
    Given the user is logged into their account
    And the user has completed a task
    When the user checks their rewards section
    Then the user should see a notification of the new reward
    And the reward should be added to their rewards balance

  Scenario: User claims a reward
    Given the user has a reward available in their rewards balance
    When the user clicks on the "Claim Reward" button
    Then the reward should be removed from their rewards balance
    And the user should receive a confirmation message that the reward has been claimed

  Scenario: User views available rewards
    Given the user is logged into their account
    When the user navigates to the rewards page
    Then the user should see a list of available rewards
    And each reward should display a description and required points

  Scenario: User receives a special reward on their birthday
    Given the user has set their birthday in their profile
    And today is the user’s birthday
    When the user logs into their account
    Then the user should see a special birthday reward notification
    And the birthday reward should be automatically added to their rewards balance

  Scenario: User shares the website to earn rewards
    Given the user has a referral link
    When the user shares the link with a friend
    And the friend signs up using the link
    Then the user should receive a referral reward
    And the user should see the new reward in their rewards balance