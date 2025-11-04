Feature: Anonymous User Can View Public Recycling Center Information

  Scenario: Anonymous user can view a list of recycling centers
    Given I am an anonymous user
    When I navigate to the recycling center list page
    Then I should see a list of recycling centers
    And each recycling center should display its name
    And each recycling center should display its address

  Scenario: Anonymous user can view details of a specific recycling center
    Given I am an anonymous user
    And a recycling center exists with the name "Eco Depot"
    When I navigate to the details page of "Eco Depot"
    Then I should see the details of "Eco Depot"
    And I should see the address of "Eco Depot"
    And I should see the operating hours of "Eco Depot"
    And I should see the accepted materials of "Eco Depot"