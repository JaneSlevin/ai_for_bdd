Feature: Website Content Management

  As a company
  I want to have a website that is easy to use
  So that I can upload or delete stuff step by step

  Scenario: Uploading a new image to the website gallery
    Given I am logged in as an administrator
    And I navigate to the "Image Gallery" page
    When I click the "Upload Image" button
    And I select an image file named "new_logo.png"
    And I enter the image title as "Company Logo"
    And I enter the image description as "Our new company logo for 2024"
    And I click the "Save" button
    Then the "Image Gallery" page should display the "Company Logo" image
    And a success message "Image uploaded successfully" should be displayed

  Scenario: Deleting an existing news article from the website
    Given I am logged in as an editor
    And I navigate to the "News Articles" page
    And I see a news article titled "Company Achieves Record Growth"
    When I click the "Delete" button next to the "Company Achieves Record Growth" article
    And I confirm the deletion in the confirmation dialog
    Then the "News Articles" page should not display the "Company Achieves Record Growth" article
    And a success message "Article deleted successfully" should be displayed

  Scenario: Editing a product description on the website
    Given I am logged in as a content manager
    And I navigate to the "Product Catalog" page
    And I select the product "Premium Widget"
    When I click the "Edit Description" button
    And I clear the existing product description
    And I enter the new product description as "The Premium Widget is our flagship product, now featuring improved performance and durability."
    And I click the "Save Changes" button
    Then the product description for "Premium Widget" should be updated to "The Premium Widget is our flagship product, now featuring improved performance and durability."
    And a success message "Product description updated successfully" should be displayed

  Scenario: Uploading a PDF document to the resource library
    Given I am logged in as a document administrator
    And I navigate to the "Resource Library" page
    When I click the "Upload Document" button
    And I select a PDF file named "annual_report_2023.pdf"
    And I enter the document title as "Annual Report 2023"
    And I select the category "Financial Reports"
    And I click the "Upload" button
    Then the "Resource Library" page should display the "Annual Report 2023" document
    And the document should be categorized as "Financial Reports"
    And a success message "Document uploaded successfully" should be displayed