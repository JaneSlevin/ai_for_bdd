Feature: API Access for Developers

  Scenario: Successful API access with valid credentials
    Given I am a registered developer
    And I have valid API credentials
    When I send a request to the API endpoint
    Then I should receive a response with a status code 200
    And the response should contain the expected data format

  Scenario: API access with invalid credentials
    Given I am a registered developer
    And I have invalid API credentials
    When I send a request to the API endpoint
    Then I should receive a response with a status code 401
    And the response should contain an error message indicating unauthorized access

  Scenario: API access with missing credentials
    Given I am a registered developer
    When I send a request to the API endpoint without credentials
    Then I should receive a response with a status code 400
    And the response should contain an error message indicating missing credentials

  Scenario: Accessing a non-existent API endpoint
    Given I am a registered developer
    And I have valid API credentials
    When I send a request to a non-existent API endpoint
    Then I should receive a response with a status code 404
    And the response should contain an error message indicating the endpoint is not found

  Scenario: Rate limiting on API access
    Given I am a registered developer
    And I have valid API credentials
    When I exceed the allowed number of API requests
    Then I should receive a response with a status code 429
    And the response should contain an error message indicating rate limit exceeded