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
  

Feature: Merge articles by admin
  As an admin
  I want to merge relevant articles
  
  Background: articles in database
  Given the following articles 
  | type        | title   | author      | body |
  | Article1    | Hola    | Spanish One |   I am from Spain |
  | Article2    | Hi      | America Two |   I am from America |
  
  Scenario: Admin merge articles
    
    Given I am on the admin page
    When I follow "All Articles"
    And I press "Edit"
    And I fill in "merge_with"
    And I pree "Merge"
    Then I should see ""
    
 Scenario: Non-admin cannot merge articles
   
   Given I am on the home page
   
   
   
  
A non-admin cannot merge articles.

When articles are merged, the merged article should contain the text of both previous articles.
When articles are merged, the merged article should have one author (either one of the authors of the original article).
Comments on each of the two original articles need to all carry over and point to the new, merged article.
The title of the new article should be the title from either one of the merged articles.