Feature: Update Recycling Facility Information

  As a recycling facility representative
  I want to be able to update my information and the type of material I accept
  So that I can avoid any miscommunication with users

  Scenario: Successfully update facility name and address
    Given I am logged in as a recycling facility representative
    And I navigate to the "Edit Profile" page
    When I update the "Facility Name" field to "New Recycling Center Name"
    And I update the "Address" field to "123 New Street, Anytown, CA 91234"
    And I click the "Save Changes" button
    Then I should see a success message "Profile updated successfully"
    And The "Facility Name" on my profile should be "New Recycling Center Name"
    And The "Address" on my profile should be "123 New Street, Anytown, CA 91234"

  Scenario: Successfully update accepted materials
    Given I am logged in as a recycling facility representative
    And I navigate to the "Edit Profile" page
    When I select "Plastic Bottles" and "Aluminum Cans" from the accepted materials list
    And I deselect "Glass Bottles" from the accepted materials list
    And I click the "Save Changes" button
    Then I should see a success message "Profile updated successfully"
    And My profile should show that I accept "Plastic Bottles" and "Aluminum Cans"
    And My profile should not show that I accept "Glass Bottles"

  Scenario: Attempt to update with invalid phone number
    Given I am logged in as a recycling facility representative
    And I navigate to the "Edit Profile" page
    When I update the "Phone Number" field to "123-45"
    And I click the "Save Changes" button
    Then I should see an error message "Invalid phone number format"
    And The "Phone Number" field should still contain the old value

  Scenario: Attempt to update with empty facility name
    Given I am logged in as a recycling facility representative
    And I navigate to the "Edit Profile" page
    When I clear the "Facility Name" field
    And I click the "Save Changes" button
    Then I should see an error message "Facility Name cannot be empty"
    And The "Facility Name" field should still be empty

  Scenario: Successfully update contact email
    Given I am logged in as a recycling facility representative
    And I navigate to the "Edit Profile" page
    When I update the "Contact Email" field to "newemail@example.com"
    And I click the "Save Changes" button
    Then I should see a success message "Profile updated successfully"
    And The "Contact Email" on my profile should be "newemail@example.com"