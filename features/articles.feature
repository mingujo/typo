# Feature: Merge articles by admin
#   As an admin
#   I want to merge relevant articles
  
# Background: 
#     Given the following articles exist:
#     | id  | type        | title   | author      | body              | 
#     | 1   | Article    | Hola    | Spanish One | I am from Spain   | 
#     | 2   | Article    | Hi      | America Two | I am from America | 
#     And the blog is set up
#     And I am logged into the admin panel
#     And I am on the admin page
#     When I follow "Articles"
#     And I follow "Hello World!"
#     And I fill in "merge_with" for "2"
#     And I press "Merge"

# Scenario: contain the text of both previous articles
#     Given I am on the home page
#     When I follow "Articles"
#     And I follow "General"
#     And I follow "Hola"
#     Then I should see "I am from Spain" and "I am from America"

# Scenario: merge article should have one author
#     Given I am on the home page
#     When I follow "Articles"
#     And I follow "General"
#     And I follow "Hola"
#     Then I should see "Spanish One"
#     And I should not see "America Two"

# # Scenario: comments all carried over to the new, merged article
# #     Given I am on the home page
# #     When I follow "Articles"
# #     And I follow "General"
# #     And I follow "Hola"
# #     Then I should see "Como estas?"
# #     And I should see "How are you?"

# Scenario: title either one of the merged articles
#     Given I am on the home page
#     When I follow "Articles"
#     And I follow "General"
#     Then I should see "Hola"
#     And I should not see "Hello"