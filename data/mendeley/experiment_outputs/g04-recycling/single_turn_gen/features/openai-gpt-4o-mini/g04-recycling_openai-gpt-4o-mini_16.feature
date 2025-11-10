Feature: Manage Recycling Facilities Information

  As an admin
  I want to be able to add or remove recycling facilities' information
  So that users get the most recent information

  Scenario: Admin adds a new recycling facility
    Given the admin is logged in
    When the admin navigates to the "Add Recycling Facility" page
    And enters the facility name "Green Waste Center"
    And enters the facility address "123 Eco Lane, Green City"
    And enters the facility contact number "555-1234"
    And clicks the "Submit" button
    Then the new facility "Green Waste Center" should be added to the list of recycling facilities
    And a confirmation message "Recycling facility added successfully" should be displayed

  Scenario: Admin removes an existing recycling facility
    Given the admin is logged in
    And a recycling facility "Green Waste Center" exists
    When the admin navigates to the "Manage Recycling Facilities" page
    And selects the facility "Green Waste Center"
    And clicks the "Remove" button
    Then the facility "Green Waste Center" should be removed from the list of recycling facilities
    And a confirmation message "Recycling facility removed successfully" should be displayed

  Scenario: Admin updates recycling facility information
    Given the admin is logged in
    And a recycling facility "Green Waste Center" exists
    When the admin navigates to the "Manage Recycling Facilities" page
    And selects the facility "Green Waste Center"
    And updates the facility address to "456 Eco Avenue, Green City"
    And clicks the "Update" button
    Then the facility address for "Green Waste Center" should be updated to "456 Eco Avenue, Green City"
    And a confirmation message "Recycling facility updated successfully" should be displayed

  Scenario: Admin tries to add a facility with missing information
    Given the admin is logged in
    When the admin navigates to the "Add Recycling Facility" page
    And enters the facility name ""
    And enters the facility address "123 Eco Lane, Green City"
    And enters the facility contact number "555-1234"
    And clicks the "Submit" button
    Then an error message "Facility name is required" should be displayed

  Scenario: Admin views the list of recycling facilities
    Given the admin is logged in
    When the admin navigates to the "Manage Recycling Facilities" page
    Then the admin should see a list of all recycling facilities
    And the list should include "Green Waste Center" with its details