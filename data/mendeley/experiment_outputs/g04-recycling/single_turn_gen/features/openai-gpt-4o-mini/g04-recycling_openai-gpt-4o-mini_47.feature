Feature: Admin Communication with Facilities

  Scenario: Admin sends a message to a facility
    Given I am logged in as an admin
    And I have selected a facility to communicate with
    When I compose a message "Update: New features available on the website"
    And I send the message
    Then the facility should receive the message
    And the message should be logged in the admin's sent messages

  Scenario: Admin views message history with a facility
    Given I am logged in as an admin
    And I have selected a facility
    When I view the message history
    Then I should see all messages sent to and received from the facility
    And the messages should be displayed in chronological order

  Scenario: Admin receives confirmation of message delivery
    Given I am logged in as an admin
    And I have composed a message to a facility
    When I send the message
    Then I should see a confirmation notification "Message sent successfully"

  Scenario: Admin tries to send a message without selecting a facility
    Given I am logged in as an admin
    When I compose a message "Reminder: Website maintenance tomorrow"
    And I do not select a facility
    And I try to send the message
    Then I should see an error message "Please select a facility before sending"

  Scenario: Admin edits a message before sending
    Given I am logged in as an admin
    And I have selected a facility
    When I compose a message "Important update"
    And I edit the message to "Important update: Please check the new features"
    And I send the message
    Then the facility should receive the updated message