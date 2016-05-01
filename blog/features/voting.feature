Feature: Up/Down Vote
  As a user.
  I want to up/down vote a dream based on it’s quality and/or my interest in it.
  So that I can help the community with content quality control.

  Scenario: See Ratings for Dreams
    Given the following dreams exist:
    | title  | content  |
    | title1 | text1    |
    | title2 | text2    |

    And I am on the home page

    Then I should see "Rating:"
    Then I should see "0" before "0"
    And I should see "0" before "title1"  
    And I should see "0" before "0"
    And I should see "0" before "title2"      

  Scenario: Up/Down Vote a dream
    Given the following dreams exist:
    | title  | content  |
    | title1 | text1    |
    | title2 | text2    |

    Given I am a new, logged-in user

    And I am on the home page

    Then I should see "Rating:"
    Then I should see "0" before "0"
    And I should see "0" before "title1"  

    When I click "upvote_btn_title1"
    Then I should see "1" before "0"
    And I should see "0" before "title1"

    When I click "downvote_btn_title2"
    Then I should see "1" before "0"
    And I should see "0" before "-1"
    And I should see "-1" before "title2"

  Scenario: Up/Down Vote a dream as a different user
    Given the following dreams exist:
    | title  | content  |
    | title1 | text1    |
    | title2 | text2    |

    Given I am on the home page
    And I click "login_link"
    Then I should be on the login page
    When I click "signup_link"
    Then I should be on the signup page

    When I fill in "email" with "test@example.com"
    And I fill in "password" with "password"
    And I fill in "password_confirmation" with "password"
    And I fill in "name" with "FreddyTheGhost"

    And I press "create_account"

    Then I should see "FreddyTheGhost"

    Given I am on the home page
