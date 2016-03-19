Feature: Comment on post
  As a user.
  I want to comment on other user’s dreams.
  So that I can share my interpretation and/or my thoughts of the dream with the original poster and the rest of the community.
  
  Scenario: See the comments for the dream
  Given the following dreams exist:
    | title  | text     | rating  |
    | title1 | text1    | 0       |
    | title2 | text2    | 2       |

  And I am on the home page

    When I click on "title1"
    Then I should be on the dream page with title: title1
    Then I should see the comments for the dream

  Scenario: Post Comment
    Given the following dreams exist:
    | title  | text     | rating  |
    | title1 | text1    | 1       |
    | title2 | text2    | 3       |

    And I am on the home page

    Then I should see "title1"
    When I click on "title1"
      Then I should be on the dream page with title: title1
      When I fill in "interpret" with "my thoughts"
      When I press "post"
      Then I should see "Interpretations:" before "my thoughts"


    