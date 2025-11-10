Feature: API Access for iOS Application Development

  As a developer
  I want to access an API from the website
  So that I can integrate it and implement certain features in my own iOS application

  Scenario: Successful API access with valid credentials
    Given I have a valid API key and secret
    When I make a request to the API endpoint "/data" with my credentials
    Then the API should return a 200 OK status code
    And the response body should contain valid JSON data
    And the response should include a "Content-Type" header with value "application/json"

  Scenario: API access denied due to invalid API key
    Given I have an invalid API key
    When I make a request to the API endpoint "/data" with my invalid API key and a valid secret
    Then the API should return a 401 Unauthorized status code
    And the response body should contain an error message indicating "Invalid API key"

  Scenario: API access denied due to missing API key
    When I make a request to the API endpoint "/data" without providing an API key
    Then the API should return a 401 Unauthorized status code
    And the response body should contain an error message indicating "API key is required"

  Scenario: API access rate limited after exceeding request limit
    Given I have a valid API key and secret
    And I have exceeded the API request limit for my account
    When I make a request to the API endpoint "/data" with my credentials
    Then the API should return a 429 Too Many Requests status code
    And the response body should contain an error message indicating "Rate limit exceeded"
    And the response should include a "Retry-After" header indicating when I can make another request

  Scenario: API access with valid credentials and query parameters
    Given I have a valid API key and secret
    When I make a request to the API endpoint "/search" with my credentials and the query parameter "q=example"
    Then the API should return a 200 OK status code
    And the response body should contain valid JSON data matching the search query "example"
    And the response should include a "Content-Type" header with value "application/json"