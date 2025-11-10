Feature: Secure Personal Information

  As a user, I want to have my personal information kept securely in the database of the website,
  so that I will not suffer from identity theft or telephone harassment.

  Scenario: Password Hashing
    Given a user with username "testuser" and password "P@sswOrd123"
    When the user registers an account
    Then the password stored in the database should be a hashed version of "P@sswOrd123"
    And the hashed password should not be equal to "P@sswOrd123"

  Scenario: Data Encryption at Rest
    Given a user with personal information: name "John Doe", phone number "555-123-4567"
    When the user saves their personal information
    Then the personal information stored in the database should be encrypted
    And a direct database query should not reveal the plain text "John Doe" or "555-123-4567"

  Scenario: Protection Against SQL Injection
    Given a user attempts to log in with username "'; DROP TABLE users;--" and password "anypassword"
    When the user submits the login form
    Then the login should fail
    And the database should not be altered or corrupted

  Scenario: Access Control and Authorization
    Given an unauthorized user attempts to access another user's personal information
    When the unauthorized user tries to view the other user's profile
    Then access should be denied
    And an error message indicating insufficient privileges should be displayed

  Scenario: Regular Security Audits
    Given the system is running
    When a scheduled security audit is performed
    Then the audit report should show no high-severity vulnerabilities related to personal data security
    And the audit log should be reviewed by security personnel