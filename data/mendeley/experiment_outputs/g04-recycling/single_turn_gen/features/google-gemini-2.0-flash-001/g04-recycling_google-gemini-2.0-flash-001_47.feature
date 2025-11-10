Feature: Admin Communication with Facilities

  As an admin,
  I want to be able to communicate directly with facilities,
  So that I can keep them updated about features we have on our website.

  Scenario: Admin sends a new feature announcement to a specific facility
    Given I am logged in as an admin
    And I navigate to the facility communication page
    When I select a specific facility "Facility ABC"
    And I enter the subject "New Feature: Online Appointment Scheduling"
    And I enter the message body "We are excited to announce the launch of online appointment scheduling. Please visit our website to learn more."
    And I click the "Send" button
    Then I should see a success message "Message sent successfully to Facility ABC"
    And the facility "Facility ABC" should receive an email with the subject "New Feature: Online Appointment Scheduling"
    And the email body should contain "We are excited to announce the launch of online appointment scheduling."

  Scenario: Admin sends a feature update to all facilities
    Given I am logged in as an admin
    And I navigate to the facility communication page
    When I select "All Facilities" in the recipient dropdown
    And I enter the subject "Important Update: Website Maintenance Scheduled"
    And I enter the message body "Please be advised that we will be performing website maintenance on Saturday, October 26th, from 10:00 PM to 2:00 AM. The website will be unavailable during this time."
    And I click the "Send" button
    Then I should see a success message "Message sent successfully to all facilities"
    And all facilities should receive an email with the subject "Important Update: Website Maintenance Scheduled"
    And the email body should contain "Please be advised that we will be performing website maintenance on Saturday, October 26th, from 10:00 PM to 2:00 AM."

  Scenario: Admin attempts to send a message with an empty subject
    Given I am logged in as an admin
    And I navigate to the facility communication page
    When I select a specific facility "Facility XYZ"
    And I leave the subject field empty
    And I enter the message body "This is a test message."
    And I click the "Send" button
    Then I should see an error message "Subject is required"
    And the message should not be sent

  Scenario: Admin attempts to send a message with an empty message body
    Given I am logged in as an admin
    And I navigate to the facility communication page
    When I select a specific facility "Facility PQR"
    And I enter the subject "Test Message"
    And I leave the message body empty
    And I click the "Send" button
    Then I should see an error message "Message body is required"
    And the message should not be sent

  Scenario: Admin sends a message with an attachment to all facilities
    Given I am logged in as an admin
    And I navigate to the facility communication page
    When I select "All Facilities" in the recipient dropdown
    And I enter the subject "New Training Material Available"
    And I enter the message body "New training materials are now available for your staff."
    And I attach a file "training_manual.pdf"
    And I click the "Send" button
    Then I should see a success message "Message sent successfully to all facilities"
    And all facilities should receive an email with the subject "New Training Material Available"
    And the email should include the attachment "training_manual.pdf"
    And the email body should contain "New training materials are now available for your staff."