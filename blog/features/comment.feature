Feature: Comment on post
  As a user.
  I want to comment on other user’s dreams.
  So that I can share my interpretation and/or my thoughts of the dream with the original poster and the rest of the community.

  Scenario: See the comments for the dream
    Given the following dreams exist:
      | title  | content  |
      | title1 | text1    |
      | title2 | text2    |

    And I am on the home page

    When I click "title1"
    Then I should be on the dream page with title: title1
    When I fill in "comment_box" with "my thoughts"
    When I press "create_comment"
    Then I should see "Comments" before "my thoughts"

    When I fill in "comment_box" with "my other thoughts"
    When I press "create_comment"
    Then I should see "Comments" before "my other thoughts"


  Scenario: Post Comment
    Given the following dreams exist:
      | title  | content  |
      | title1 | text1    |
      | title2 | text2    |

    And I am on the home page

    Then I should see "title1"
    When I click "title1"
    Then I should be on the dream page with title: title1
    When I fill in "comment_box" with "my thoughts"
    When I press "create_comment"
    Then I should see "Comments" before "my thoughts"
