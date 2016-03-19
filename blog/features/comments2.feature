Feature: Comment on Post
  As a user.
  I want to comment on other user's dreams.
  So that I can share my interpretation and/or my
  thoughts of the dream with the origional poster and the rest of the community.

  Scenario: See the comments for the dream
  Given the following dreams exist:
    | title  | text     | rating  |
    | title1 | text1    | 0       |
    | title2 | text2    | 2       |

  And I am on the home page

    When I click on "title1"
    Then I should be on the dream page with title: title1
    Then I should see the comments for the dream


  Scenario: Comment on a dream
  Given the following dreams exist:
    | title  | text     | rating  |
    | title1 | text1    | 0       |
    | title2 | text2    | 2       |