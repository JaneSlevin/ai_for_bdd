Feature: Onboard Recycling Centers

  As an admin,
  I want to onboard recycling centers on the platform,
  So that I can increase information accuracy.

  Scenario: Successfully onboarding a new recycling center
    Given I am logged in as an admin
    When I navigate to the "Onboard Recycling Center" page
    And I fill in the recycling center's name with "Green Waste Solutions"
    And I fill in the address with "123 Eco Lane, Green City"
    And I select the services offered as "Plastic, Paper, Metal"
    And I submit the onboarding form
    Then I should see a success message "Recycling Center onboarded successfully"
    And "Green Waste Solutions" should be listed in the recycling centers directory

  Scenario: Attempting to onboard a recycling center with missing fields
    Given I am logged in as an admin
    When I navigate to the "Onboard Recycling Center" page
    And I fill in the recycling center's name with "Eco Recycling"
    And I leave the address field blank
    And I select the services offered as "Glass"
    And I submit the onboarding form
    Then I should see an error message "Address is required"

  Scenario: Onboarding a recycling center with duplicate name
    Given I am logged in as an admin
    And "Eco Recycling" already exists in the recycling centers directory
    When I navigate to the "Onboard Recycling Center" page
    And I fill in the recycling center's name with "Eco Recycling"
    And I fill in the address with "456 Green Way, Eco Town"
    And I select the services offered as "Organic Waste"
    And I submit the onboarding form
    Then I should see an error message "A recycling center with this name already exists"

  Scenario: Viewing onboarding history of recycling centers
    Given I am logged in as an admin
    When I navigate to the "Onboarding History" page
    Then I should see a list of all previously onboarded recycling centers
    And each entry should display the name, address, and date of onboarding

  Scenario: Editing details of an onboarded recycling center
    Given I am logged in as an admin
    And "Green Waste Solutions" is listed in the recycling centers directory
    When I navigate to the "Edit Recycling Center" page for "Green Waste Solutions"
    And I update the address to "456 Eco Lane, Green City"
    And I submit the changes
    Then I should see a success message "Recycling Center details updated successfully"
    And "Green Waste Solutions" should reflect the new address in the recycling centers directory