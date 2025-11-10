Feature: Data Encryption for Admins

  Scenario: Encrypt sensitive user data
    Given the admin has access to the data management system
    When the admin initiates the encryption process on sensitive user data
    Then all sensitive user data should be encrypted using the specified encryption algorithm
    And the system should display a confirmation message that the encryption was successful

  Scenario: Verify encryption status of data
    Given the admin has encrypted sensitive user data
    When the admin checks the encryption status of the data
    Then the system should indicate that the data is encrypted
    And the encryption method used should be displayed

  Scenario: Attempt to access unencrypted data
    Given the sensitive user data is not encrypted
    When an unauthorized user attempts to access the data
    Then the system should deny access
    And the system should log the access attempt as unauthorized

  Scenario: Decrypt data with proper authorization
    Given the admin has encrypted sensitive user data
    When the admin provides valid authorization to decrypt the data
    Then the data should be decrypted successfully
    And the system should display a confirmation that decryption was successful

  Scenario: Check for encryption compliance report
    Given the admin is logged into the data management system
    When the admin requests an encryption compliance report
    Then the system should generate a report listing all encrypted and unencrypted data
    And the report should include details of the encryption methods used