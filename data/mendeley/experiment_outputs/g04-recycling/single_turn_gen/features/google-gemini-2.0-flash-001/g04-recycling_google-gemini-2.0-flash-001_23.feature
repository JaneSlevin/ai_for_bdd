Feature: Data Encryption

  As an admin, I want to have all data encrypted,
  so that important information will not be stolen during a server breach or an attack.

  Scenario: Verify database connection strings are encrypted
    Given I am logged in as an administrator
    When I navigate to the application configuration page
    Then I should see that the database connection string is encrypted
    And I should not be able to view the plain text connection string

  Scenario: Verify sensitive user data is encrypted in the database
    Given I am logged in as an administrator
    When I query the database for user data
    Then the user's personally identifiable information (PII) such as password and email should be encrypted
    And I should not be able to retrieve the plain text PII directly

  Scenario: Verify files uploaded to the server are encrypted at rest
    Given I am logged in as an administrator
    When I upload a sensitive document to the server
    Then the file should be encrypted at rest on the server's file system
    And accessing the file directly should not reveal its content without proper decryption

  Scenario: Verify encryption key rotation process
    Given I am logged in as an administrator
    When I initiate an encryption key rotation
    Then a new encryption key should be generated
    And all data should be re-encrypted with the new key
    And the old encryption key should be securely archived or destroyed