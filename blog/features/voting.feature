Feature: Up/Down Vote
  As a user.
  I want to up/down vote a dream based on it’s quality and/or my interest in it.
  So that I can help the community with content quality control.

  Scenario: Upvote a dream
    Given the following dreams exist:
    | title  | text     | rating  |
    | title1 | text1    | 0       |
    | title2 | text2    | 2       |

    And I am on the home page

    Then I should see "2" before "title2"
    When I press "upvote_button"
    Then I should see "3" before "title2"

