Feature: Up/Down Vote
  As a user.
  I want to up/down vote a dream based on it’s quality and/or my interest in it.
  So that I can help the community with content quality control.

  Scenario: See Ratings for Dreams
    Given the following dreams exist:
    | title  | text     | rating  |
    | title1 | text1    | 0       |
    | title2 | text2    | 2       |

    And I am on the home page

    Then I should see "Ratings:"
    Then I should see "2" before "title2"   
    And I should see a "0" before "title1"

  Scenario: Up/Down Vote a dream
    Given the following dreams exist:
    | title  | text     | rating  |
    | title1 | text1    | 0       |
    | title2 | text2    | 2       |

    And I am on the home page

    When I click on "title1"
      Then I should be on the dream page with title: title1
      And I should see "Rating: 2"
      When I click on "upvote_button"
      Then I should see "Rating: 3"
      When I click on "downvote_button"
      Then I should see "Rating: 2"

