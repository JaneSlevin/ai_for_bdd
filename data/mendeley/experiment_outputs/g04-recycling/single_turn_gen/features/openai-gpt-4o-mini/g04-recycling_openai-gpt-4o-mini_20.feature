Feature: Multi-device access to the site

  Scenario: Accessing the site on a desktop
    Given the user is on their desktop browser
    When the user navigates to the site URL
    Then the site should load successfully
    And the user should see the homepage content

  Scenario: Accessing the site on a mobile device
    Given the user is on their mobile browser
    When the user navigates to the site URL
    Then the site should load successfully
    And the user should see the mobile-optimized homepage content

  Scenario: Switching between devices
    Given the user is logged into their account on a desktop
    When the user logs out
    And then logs into the same account on a mobile device
    Then the user should see their account dashboard
    And all previously saved settings should be intact

  Scenario: Accessing the site on a tablet
    Given the user is on their tablet browser
    When the user navigates to the site URL
    Then the site should load successfully
    And the user should see the tablet-optimized homepage content

  Scenario: Checking site responsiveness on different devices
    Given the user is on their desktop
    When the user resizes the browser window
    Then the site layout should adjust according to the screen size