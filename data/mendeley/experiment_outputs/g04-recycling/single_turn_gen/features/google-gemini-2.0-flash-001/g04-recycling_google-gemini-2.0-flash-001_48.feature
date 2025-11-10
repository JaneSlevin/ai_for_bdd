Feature: Facility Browsing with Environment-Friendly Indicator

  As a user,
  I want to be able to browse through the list of facilities and see which ones are environment-friendly,
  so that I can know for sure my waste is not going to leave a negative ecological footprint.

  Scenario: Verify environment-friendly indicator is present for compliant facilities
    Given I am on the facility listing page
    When I browse the list of facilities
    Then I should see a facility named "EcoWaste Solutions"
    And I should see an "Environment-Friendly" indicator next to "EcoWaste Solutions"

  Scenario: Verify environment-friendly indicator is absent for non-compliant facilities
    Given I am on the facility listing page
    When I browse the list of facilities
    Then I should see a facility named "Standard Disposal Inc."
    And I should not see an "Environment-Friendly" indicator next to "Standard Disposal Inc."

  Scenario: Verify filtering by environment-friendly facilities shows only compliant options
    Given I am on the facility listing page
    When I filter the facilities by "Environment-Friendly"
    Then I should only see facilities with the "Environment-Friendly" indicator
    And I should not see any facilities without the "Environment-Friendly" indicator

  Scenario: Verify facility details page shows environment-friendly certification information
    Given I am on the facility listing page
    When I click on "EcoWaste Solutions"
    Then I should be redirected to the facility details page for "EcoWaste Solutions"
    And I should see a section labeled "Environmental Certifications"
    And I should see details about "ISO 14001" certification

  Scenario: Verify a facility can be both Environment-Friendly and have specific waste types accepted
    Given I am on the facility listing page
    When I browse the list of facilities
    Then I should see a facility named "Green Recycling Center"
    And I should see an "Environment-Friendly" indicator next to "Green Recycling Center"
    And I should see "Accepts: Plastic, Paper" for "Green Recycling Center"