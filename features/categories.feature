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
    | id  | type        | title   | author      | body              | comment     |
    | 1   | Article1    | Hola    | Spanish One | I am from Spain   | Como estas? |
    | 2   | Article2    | Hi      | America Two | I am from America | How are you?|
    
    And I am on the admin page
    When I follow "All Articles"
    And I press the first "Edit" #first('.item').click_link('Agree')
    And I fill in "merge_with" for "2"
    And I press "Merge"

    Scenario: contain the text of both previous articles
      Given I am on the home page
      When I follow "Articles"
      And I follow "General"
      And I follow "Hola"
      Then I should see "I am from Spain" and "I am from America"
    
    Scenario: merge article should have one author
      Given I am on the home page
      When I follow "Articles"
      And I follow "General"
      And I follow "Hola"
      Then I should see "Spanish One"
      And I should not see "America Two"
      
    Scenario: comments all carried over to the new, merged article
      Given I am on the home page
      When I follow "Articles"
      And I follow "General"
      And I follow "Hola"
      Then I should see "Como estas?"
      And I should see "How are you?"
      
    Scenario: title either one of the merged articles
      Given I am on the home page
      When I follow "Articles"
      And I follow "General"
      Then I should see "Hola"
      And I should not see "Hello"
