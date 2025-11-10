Feature: Access to Employee Information

  Scenario: HR employee views full information of a specific employee
    Given I am logged in as an HR employee
    When I navigate to the employee directory
    And I search for an employee by name "John Doe"
    Then I should see the full information of "John Doe"
    And the information should include "Name", "Position", "Department", "Email", and "Phone Number"

  Scenario: HR employee views the list of all employees
    Given I am logged in as an HR employee
    When I navigate to the employee directory
    Then I should see a list of all employees
    And each entry should include "Name" and "Position"

  Scenario: HR employee accesses detailed information of an employee
    Given I am logged in as an HR employee
    And I have a list of employees displayed
    When I click on the employee named "Jane Smith"
    Then I should be taken to the detailed information page of "Jane Smith"
    And I should see "Name", "Position", "Department", "Email", "Phone Number", and "Employment Date"

  Scenario: HR employee searches for an employee by department
    Given I am logged in as an HR employee
    When I navigate to the employee directory
    And I filter employees by the department "Sales"
    Then I should see a list of all employees in the "Sales" department
    And the information should include "Name" and "Position" for each employee

  Scenario: HR employee attempts to access employee information without being logged in
    Given I am not logged in
    When I attempt to access the employee directory
    Then I should be redirected to the login page
    And I should see a message "Access denied. Please log in to continue."