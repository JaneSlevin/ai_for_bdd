Feature: Update Recycling Center Information

  As a superuser
  I want to update the recycling center information
  So that I can provide the latest information about the recycling center

  Scenario: Successfully updating the recycling center's address
    Given I am logged in as a superuser
    And I navigate to the recycling center management page
    When I select the recycling center "EcoRecycle Hub"
    And I update the address to "123 New Main Street"
    And I click the "Update" button
    Then I should see a success message "Recycling center updated successfully"
    And the recycling center "EcoRecycle Hub" should have the address "123 New Main Street"

  Scenario: Successfully updating the recycling center's accepted materials
    Given I am logged in as a superuser
    And I navigate to the recycling center management page
    When I select the recycling center "Green Solutions Depot"
    And I update the accepted materials to include "Cardboard and Plastic Bottles"
    And I click the "Update" button
    Then I should see a success message "Recycling center updated successfully"
    And the recycling center "Green Solutions Depot" should accept "Cardboard and Plastic Bottles"

  Scenario: Attempt to update a recycling center with invalid contact information
    Given I am logged in as a superuser
    And I navigate to the recycling center management page
    When I select the recycling center "Renew Earth Center"
    And I update the phone number to "invalid phone number"
    And I click the "Update" button
    Then I should see an error message "Invalid phone number format"
    And the recycling center "Renew Earth Center" should retain its original phone number

  Scenario: Successfully updating the recycling center's operating hours
    Given I am logged in as a superuser
    And I navigate to the recycling center management page
    When I select the recycling center "Waste Not Recycling"
    And I update the operating hours to "Monday-Friday: 9 AM - 5 PM"
    And I click the "Update" button
    Then I should see a success message "Recycling center updated successfully"
    And the recycling center "Waste Not Recycling" should have the operating hours "Monday-Friday: 9 AM - 5 PM"

  Scenario: Attempt to update a recycling center with empty fields
    Given I am logged in as a superuser
    And I navigate to the recycling center management page
    When I select the recycling center "Future Forward Recycling"
    And I clear the name field
    And I click the "Update" button
    Then I should see an error message "Name cannot be empty"
    And the recycling center "Future Forward Recycling" should retain its original name