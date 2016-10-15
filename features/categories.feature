Feature: Add/edit CategoriesController
  As a blog administrator
  In order to organize contents
  I want to be able to add and edit categories to my blog
  
  Background:
    Given the blog is set up
    And I am logged into the admin panel
    
  Scenario: Successfully add/edit categories
    Given I am on the admin page
    When I follow "Categories"
    When I fill in "category_name" with "Hello World"
    And I press "Save"
    Then I should see "Category was successfully saved."
  
