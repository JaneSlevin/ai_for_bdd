Feature: Direct communication between recycling facility and site admin

  Scenario: Recycling facility submits a concern to the site admin
    Given the recycling facility has access to the communication portal
    When the recycling facility submits a concern about a malfunctioning machine
    Then the concern should be sent to the site admin
    And the recycling facility should receive a confirmation message

  Scenario: Site admin responds to a concern from the recycling facility
    Given the site admin has received a concern from the recycling facility
    When the site admin replies to the concern with a resolution
    Then the recycling facility should receive the response
    And the response should be logged in the communication history

  Scenario: Recycling facility checks the status of their submitted concerns
    Given the recycling facility has previously submitted concerns
    When the recycling facility accesses the communication history
    Then all submitted concerns and their statuses should be displayed
    And the recycling facility should see timestamps for each concern

  Scenario: Recycling facility escalates an unresolved issue to the site admin
    Given the recycling facility has a concern that remains unresolved
    When the recycling facility escalates the issue to the site admin
    Then the escalation should be marked as urgent
    And the site admin should receive a notification about the escalation

  Scenario: Site admin updates the recycling facility on a fixed issue
    Given the site admin has resolved the issue reported by the recycling facility
    When the site admin updates the recycling facility about the resolution
    Then the recycling facility should receive a notification about the fix
    And the communication should be documented in the system