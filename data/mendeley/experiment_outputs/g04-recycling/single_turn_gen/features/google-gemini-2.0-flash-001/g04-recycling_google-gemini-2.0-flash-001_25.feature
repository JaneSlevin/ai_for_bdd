Feature: Route Planning System Access

  As an employee
  I want to access the route planning system during work
  So that I can be guided through the neighbourhood

  Scenario: Successful login with valid credentials
    Given I am on the login page
    When I enter my username "employee123" and password "SecurePassword1!"
    And I click the "Login" button
    Then I should be redirected to the route planning dashboard
    And I should see a welcome message "Welcome, employee123"

  Scenario: Unsuccessful login with invalid credentials
    Given I am on the login page
    When I enter my username "employee123" and password "WrongPassword"
    And I click the "Login" button
    Then I should see an error message "Invalid username or password"
    And I should remain on the login page

  Scenario: Accessing the route planning system with a valid session
    Given I am logged in as "employee123"
    When I navigate to the route planning dashboard
    Then I should see the route planning map
    And I should see a search bar to enter a destination

  Scenario: Planning a route to a destination
    Given I am on the route planning dashboard
    When I enter "123 Main Street" in the destination search bar
    And I select "123 Main Street" from the search suggestions
    And I click the "Plan Route" button
    Then I should see a route displayed on the map
    And I should see turn-by-turn directions

  Scenario: Route is not found
    Given I am on the route planning dashboard
    When I enter "SomeNonExistentPlace" in the destination search bar
    And I click the "Plan Route" button
    Then I should see an error message "Route not found"