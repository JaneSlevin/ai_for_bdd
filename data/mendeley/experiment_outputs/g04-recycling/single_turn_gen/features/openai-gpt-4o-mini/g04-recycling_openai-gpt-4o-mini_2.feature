Feature: Anonymous viewing of public information for recycling centers

  Scenario: User views a list of nearby recycling centers
    Given the user is on the recycling center information page
    When the user inputs their location
    Then the user should see a list of recycling centers near their location

  Scenario: User views details of a specific recycling center
    Given the user sees a list of recycling centers
    When the user clicks on a specific recycling center
    Then the user should see details such as address, operating hours, and accepted materials

  Scenario: User filters recycling centers by material type
    Given the user is on the recycling centers list page
    When the user selects a material type filter
    Then the user should see a list of recycling centers that accept the selected material type

  Scenario: User searches for recycling centers using keywords
    Given the user is on the recycling centers list page
    When the user enters keywords in the search bar
    Then the user should see a list of recycling centers that match the search keywords

  Scenario: User accesses help or FAQ without an account
    Given the user is on the recycling center information page
    When the user clicks on the help or FAQ link
    Then the user should be able to view help resources without being prompted to create an account