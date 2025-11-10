Feature: Recycling Facility Communication with Site Admin

  As a Recycling Facility
  I want to be able to communicate directly with the site admin
  So that they fix any issues or concerns I have

  Scenario: Submitting a Maintenance Request Regarding Broken Equipment
    Given I am a logged-in recycling facility user
    When I navigate to the "Contact Admin" page
    And I select "Maintenance Request" as the request type
    And I enter "The conveyor belt motor is failing and needs immediate repair." in the message field
    And I attach a photo of the broken conveyor belt motor
    And I click the "Submit" button
    Then I should see a success message "Your message has been sent to the site administrator."
    And the administrator should receive an email notification about the maintenance request

  Scenario: Reporting a Safety Hazard
    Given I am a logged-in recycling facility user
    When I navigate to the "Contact Admin" page
    And I select "Safety Hazard" as the request type
    And I enter "There is a large oil spill near the sorting station, creating a slip hazard." in the message field
    And I select a priority level of "High"
    And I click the "Submit" button
    Then I should see a success message "Your message has been sent to the site administrator."
    And the administrator should receive an email notification about the safety hazard

  Scenario: Requesting Additional Recycling Bins
    Given I am a logged-in recycling facility user
    When I navigate to the "Contact Admin" page
    And I select "General Inquiry" as the request type
    And I enter "We are running low on cardboard recycling bins and require an additional 10 bins." in the message field
    And I click the "Submit" button
    Then I should see a success message "Your message has been sent to the site administrator."
    And the administrator should receive an email notification about the bin request

  Scenario: Contacting Admin When Not Logged In
    Given I am not logged in as a recycling facility user
    When I navigate to the "Contact Admin" page
    Then I should be redirected to the login page
    And I should see a message "You must be logged in to contact the administrator."