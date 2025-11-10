Feature: Block users by IP address

  As an admin,
  I want to be able to block specific users based on IP address,
  So that I can prevent spamming on the websites.

  Scenario: Successfully block a user by IP address
    Given I am logged in as an admin
    And I have the IP address "192.168.1.1"
    When I block the IP address "192.168.1.1"
    Then the IP address "192.168.1.1" should be listed in the blocked IPs

  Scenario: Attempt to block an already blocked IP address
    Given I am logged in as an admin
    And the IP address "192.168.1.2" is already blocked
    When I try to block the IP address "192.168.1.2"
    Then I should see a message "This IP address is already blocked"

  Scenario: Unblock a previously blocked IP address
    Given I am logged in as an admin
    And the IP address "192.168.1.3" is blocked
    When I unblock the IP address "192.168.1.3"
    Then the IP address "192.168.1.3" should no longer be listed in the blocked IPs

  Scenario: View list of blocked IP addresses
    Given I am logged in as an admin
    And I have blocked the IP addresses "192.168.1.1" and "192.168.1.2"
    When I view the list of blocked IPs
    Then I should see "192.168.1.1" and "192.168.1.2" in the list

  Scenario: Block an IP address from a specific user
    Given I am logged in as an admin
    And I have a user with username "spammer" and IP address "10.0.0.1"
    When I block the IP address "10.0.0.1" for the user "spammer"
    Then the user "spammer" should be unable to access the website