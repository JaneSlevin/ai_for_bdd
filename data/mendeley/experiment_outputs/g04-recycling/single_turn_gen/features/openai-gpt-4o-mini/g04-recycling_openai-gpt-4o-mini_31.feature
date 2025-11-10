Feature: User-friendly website for uploading and deleting content

  Scenario: Successfully uploading a file
    Given I am on the upload page
    When I select a file to upload
    And I click the "Upload" button
    Then I should see a confirmation message "File uploaded successfully"
    And the uploaded file should appear in my file list

  Scenario: Attempting to upload an unsupported file type
    Given I am on the upload page
    When I select an unsupported file type to upload
    And I click the "Upload" button
    Then I should see an error message "Unsupported file type. Please upload a valid file."

  Scenario: Successfully deleting a file
    Given I have uploaded files visible in my file list
    When I click the "Delete" button next to a file
    And I confirm the deletion
    Then I should see a confirmation message "File deleted successfully"
    And the file should no longer appear in my file list

  Scenario: Canceling a file deletion
    Given I have uploaded files visible in my file list
    When I click the "Delete" button next to a file
    And I cancel the deletion
    Then I should see the file still present in my file list

  Scenario: Attempting to delete a file that does not exist
    Given I am on the file management page
    When I try to delete a file that is not in my file list
    Then I should see an error message "File not found. Please select a valid file to delete."