Feature: Onboard Recycling Centers

  As an admin
  I want to onboard recycling centers on the platform
  So that I can increase information accuracy

  Scenario: Successfully add a new recycling center with complete information
    Given I am logged in as an admin
    When I navigate to the "Add Recycling Center" page
    And I enter the following information:
      | Field          | Value                               |
      | Name           | "EcoCycle of Boulder"                |
      | Address        | "5030 Overlook Dr, Boulder, CO 80301" |
      | Phone Number   | "303-444-6634"                        |
      | Website        | "https://www.ecocycle.org/"            |
      | Accepted Materials | "Paper, Plastic, Glass, Aluminum"   |
    And I click the "Submit" button
    Then I should see a success message "Recycling center added successfully"
    And the new recycling center "EcoCycle of Boulder" should be visible on the recycling center list

  Scenario: Attempt to add a recycling center with missing required information
    Given I am logged in as an admin
    When I navigate to the "Add Recycling Center" page
    And I enter the following information:
      | Field | Value |
      | Name  | "Waste Management" |
      | Address | "" |
    And I click the "Submit" button
    Then I should see an error message "Address is required"
    And the recycling center should not be added to the list

  Scenario: Add a recycling center with special characters in the name
    Given I am logged in as an admin
    When I navigate to the "Add Recycling Center" page
    And I enter the following information:
      | Field          | Value                                |
      | Name           | "Recycle & Reuse Center!"          |
      | Address        | "123 Main St, Anytown, USA"          |
      | Phone Number   | "555-123-4567"                       |
      | Website        | "https://www.recyclereuse.com"       |
      | Accepted Materials | "Cardboard, Metal"                  |
    And I click the "Submit" button
    Then I should see a success message "Recycling center added successfully"
    And the new recycling center "Recycle & Reuse Center!" should be visible on the recycling center list

  Scenario: Add a recycling center with a duplicate name
    Given I am logged in as an admin
    And there is a recycling center named "Green Solutions" already in the system
    When I navigate to the "Add Recycling Center" page
    And I enter the following information:
      | Field          | Value                                |
      | Name           | "Green Solutions"                   |
      | Address        | "456 Oak Ave, Anytown, USA"           |
      | Phone Number   | "555-987-6543"                       |
      | Website        | "https://www.greensolutions.com"      |
      | Accepted Materials | "Electronics, Batteries"            |
    And I click the "Submit" button
    Then I should see an error message "A recycling center with this name already exists"
    And the recycling center should not be added to the list