Feature: HR Employee Access to Employee Information

  As an employee from the HR department
  I want to have access to the full information of all employees working for this business
  So that I can manage employee data effectively.

  Scenario: HR User Successfully Accesses Employee Directory
    Given I am logged in as an HR user
    When I navigate to the "Employee Directory" page
    Then I should see a list of all employees
    And Each employee should display their name, job title, and department
    And the employee list should be sortable by name, job title, and department

  Scenario: HR User Views Detailed Employee Information
    Given I am logged in as an HR user
    And I am on the "Employee Directory" page
    When I click on an employee's name
    Then I should be redirected to the employee's profile page
    And I should see the employee's personal information, including address, phone number, and email
    And I should see the employee's employment information, including start date, salary, and performance reviews

  Scenario: HR User Searches for an Employee
    Given I am logged in as an HR user
    And I am on the "Employee Directory" page
    When I enter "John Doe" in the search field
    And I click the "Search" button
    Then I should see "John Doe" in the search results
    And I should see no other employees in the search results

  Scenario: HR User Accesses Employee Directory with Incomplete Information
    Given I am logged in as an HR user
    When I navigate to the "Employee Directory" page
    Then I should see a visual indicator for employees with missing required information, such as emergency contact details
    And I should be able to filter the employee directory to view only employees with missing information

  Scenario: HR User Downloads Employee Data in CSV Format
    Given I am logged in as an HR user
    And I am on the "Employee Directory" page
    When I click the "Download CSV" button
    Then a CSV file containing all employee data should be downloaded
    And the CSV file should include fields such as employee ID, name, email, department, job title, and salary