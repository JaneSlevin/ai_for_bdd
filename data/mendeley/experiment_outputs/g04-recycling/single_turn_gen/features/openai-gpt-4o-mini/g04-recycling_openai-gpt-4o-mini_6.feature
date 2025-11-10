Feature: Recyclable Waste Selection and Facility Locator

  Scenario: User selects plastic waste and retrieves facilities
    Given the user is on the recyclable waste selection page
    When the user selects "Plastic" from the waste types
    Then the user should see a list of facilities that accept plastic
    And each facility should display its opening hours

  Scenario: User selects metal waste and retrieves facilities
    Given the user is on the recyclable waste selection page
    When the user selects "Metal" from the waste types
    Then the user should see a list of facilities that accept metal
    And each facility should display its opening hours

  Scenario: User selects glass waste and retrieves facilities
    Given the user is on the recyclable waste selection page
    When the user selects "Glass" from the waste types
    Then the user should see a list of facilities that accept glass
    And each facility should display its opening hours

  Scenario: User selects mixed waste and retrieves facilities
    Given the user is on the recyclable waste selection page
    When the user selects "Mixed" from the waste types
    Then the user should see a list of facilities that accept mixed waste
    And each facility should display its opening hours

  Scenario: User searches for a specific facility and checks its details
    Given the user is on the recyclable waste selection page
    When the user searches for "Green Facility"
    Then the user should see details for "Green Facility"
    And it should display the type of waste accepted
    And it should display the opening hours