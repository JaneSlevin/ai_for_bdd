Feature: Block Users by IP Address

  As an admin
  I want to be able to block specific users based on IP address
  So that I can prevent spamming on the websites

  Scenario: Successfully block a user by IP address
    Given I am logged in as an admin
    And I am on the admin panel
    When I enter "192.168.1.100" into the "IP Address" field
    And I click the "Block IP" button
    Then I should see a success message "IP address 192.168.1.100 has been blocked."
    And the IP address "192.168.1.100" should be listed in the blocked IP addresses

  Scenario: Attempt to block an invalid IP address
    Given I am logged in as an admin
    And I am on the admin panel
    When I enter "invalid_ip" into the "IP Address" field
    And I click the "Block IP" button
    Then I should see an error message "Invalid IP address format."
    And the IP address "invalid_ip" should not be listed in the blocked IP addresses

  Scenario: Attempt to block an IP address that is already blocked
    Given I am logged in as an admin
    And the IP address "10.0.0.5" is already blocked
    And I am on the admin panel
    When I enter "10.0.0.5" into the "IP Address" field
    And I click the "Block IP" button
    Then I should see a message "IP address 10.0.0.5 is already blocked."

  Scenario: Verify a blocked user cannot access the website
    Given the IP address "203.0.113.45" is blocked
    When a user with IP address "203.0.113.45" attempts to access the website
    Then they should see an "Access Denied" message
    And they should not be able to browse any pages on the website

  Scenario: Successfully unblock a previously blocked IP address
    Given I am logged in as an admin
    And the IP address "172.217.160.142" is already blocked
    And I am on the admin panel
    When I click the "Unblock" button next to the IP address "172.217.160.142"
    Then I should see a success message "IP address 172.217.160.142 has been unblocked."
    And the IP address "172.217.160.142" should not be listed in the blocked IP addresses
    And a user with IP address "172.217.160.142" can access the website