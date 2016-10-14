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
  
    Background: movies in database
    
    Given the following articles exist:
    | id | type        | title   | author      | body |
    | 1 | Article1    | Hola    | Spanish One |   I am from Spain |
    | 2 | Article2    | Hi      | America Two |   I am from America |
    And I am on the admin page
    When I follow "All Articles"
    And I press the first "Edit" #first('.item').click_link('Agree')
    And I fill in "merge_with" for "2"
    And I press "Merge"

    Scenario: contain the text of both previous articles
     
    
    Scenario: merge article should have one author
    
    
    

When articles are merged, the merged article should contain the text of both previous articles.
When articles are merged, the merged article should have one author (either one of the authors of the original article).
Comments on each of the two original articles need to all carry over and point to the new, merged article.
The title of the new article should be the title from either one of the merged articles.