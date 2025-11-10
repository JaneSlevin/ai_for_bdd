Feature: Manage Recycling Facilities

  As an admin
  I want to be able to add or remove recycling facilities' information
  So that users get the most recent information

  Scenario: Add a new recycling facility
    Given I am logged in as an administrator
    When I navigate to the "Manage Recycling Facilities" page
    And I click the "Add Facility" button
    Then I should see the "Add New Recycling Facility" form
    When I fill in the form with the following valid data:
      | Name         | Address              | City     | State | Zip   | Materials Accepted |
      | Example Recycling Center | 123 Main Street    | Anytown | CA    | 91234 | Paper, Plastic, Glass |
    And I click the "Save" button
    Then I should see a success message saying "Recycling Facility added successfully"
    And I should see the new facility listed in the facilities table

  Scenario: Remove an existing recycling facility
    Given I am logged in as an administrator
    And a recycling facility named "Old Recycling Plant" exists
    When I navigate to the "Manage Recycling Facilities" page
    Then I should see the "Old Recycling Plant" facility listed in the facilities table
    When I click the "Delete" button for "Old Recycling Plant"
    Then I should see a confirmation dialog asking "Are you sure you want to delete Old Recycling Plant?"
    When I confirm the deletion
    Then I should see a success message saying "Recycling Facility deleted successfully"
    And I should not see "Old Recycling Plant" listed in the facilities table

  Scenario: Add a new recycling facility with invalid data
    Given I am logged in as an administrator
    When I navigate to the "Manage Recycling Facilities" page
    And I click the "Add Facility" button
    Then I should see the "Add New Recycling Facility" form
    When I fill in the form with the following invalid data:
      | Name         | Address              | City     | State | Zip   | Materials Accepted |
      |              |                      |          |       |       | Paper, Plastic       |
    And I click the "Save" button
    Then I should see an error message indicating that required fields are missing
    And the recycling facility should not be added to the facilities table

  Scenario: Attempt to delete a non-existent recycling facility
    Given I am logged in as an administrator
    When I navigate to the "Manage Recycling Facilities" page
    Then I should not see a "Delete" button for a facility named "NonExistent Facility"
    When I try to delete "NonExistent Facility"
    Then I should see an error message indicating that the facility does not exist.