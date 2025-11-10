Feature: Update Recycling Facility Information

  Scenario: Successfully update facility information
    Given I am logged in as a recycling facility representative
    When I navigate to the "Update Facility Information" page
    And I update my facility name to "Green Earth Recycling"
    And I update my contact email to "contact@greenearthrecycling.com"
    And I click on the "Save Changes" button
    Then I should see a confirmation message "Facility information updated successfully"
    And my facility name should be "Green Earth Recycling"
    And my contact email should be "contact@greenearthrecycling.com"

  Scenario: Successfully update accepted material types
    Given I am logged in as a recycling facility representative
    When I navigate to the "Update Accepted Materials" page
    And I select "Plastic" and "Glass" from the material options
    And I click on the "Save Changes" button
    Then I should see a confirmation message "Accepted materials updated successfully"
    And the accepted materials list should include "Plastic" and "Glass"

  Scenario: Attempt to update with invalid email format
    Given I am logged in as a recycling facility representative
    When I navigate to the "Update Facility Information" page
    And I update my contact email to "invalid-email-format"
    And I click on the "Save Changes" button
    Then I should see an error message "Please enter a valid email address"

  Scenario: Attempt to update without selecting any materials
    Given I am logged in as a recycling facility representative
    When I navigate to the "Update Accepted Materials" page
    And I do not select any materials
    And I click on the "Save Changes" button
    Then I should see an error message "Please select at least one material type"

  Scenario: Cancel updating facility information
    Given I am logged in as a recycling facility representative
    When I navigate to the "Update Facility Information" page
    And I update my facility name to "Temporary Name"
    And I click on the "Cancel" button
    Then I should remain on the "Update Facility Information" page
    And my facility name should still be the original name