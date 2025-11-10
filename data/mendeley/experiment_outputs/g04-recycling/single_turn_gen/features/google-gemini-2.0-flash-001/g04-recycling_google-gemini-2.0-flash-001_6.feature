Feature: Find Recycling Facilities by Waste Type and Schedule

  Scenario: User selects a single waste type and views facilities with opening hours
    Given I am on the recycling facility search page
    When I select "Plastic Bottles" as the waste type
    Then I should see a list of recycling facilities that accept "Plastic Bottles"
    And each facility should display its opening hours

  Scenario: User selects multiple waste types and views facilities accepting all selected types
    Given I am on the recycling facility search page
    When I select "Cardboard" and "Aluminum Cans" as waste types
    Then I should see a list of recycling facilities that accept both "Cardboard" and "Aluminum Cans"
    And each facility should display its opening hours

  Scenario: No facilities found for selected waste type
    Given I am on the recycling facility search page
    When I select "Polystyrene Foam" as the waste type
    Then I should see a message indicating that no facilities accept "Polystyrene Foam" in my area

  Scenario: User filters facilities by opening hours on a specific day
    Given I am on the recycling facility search page
    And I have selected "Glass Bottles" as the waste type
    When I filter facilities to only show those open on "Saturday"
    Then I should see a list of recycling facilities that accept "Glass Bottles" and are open on "Saturday"
    And each facility should display its opening hours for "Saturday"

  Scenario: User selects a waste type and views a map with facility locations
    Given I am on the recycling facility search page
    When I select "Paper" as the waste type
    Then I should see a map displaying the locations of facilities that accept "Paper"
    And each facility marker should indicate its name and opening hours when clicked