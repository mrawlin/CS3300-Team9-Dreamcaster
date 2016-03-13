Feature: Post Dream

	As a user
  I want to post my dream to the DreamCasters community.
  So that I can share my dreams with other users.

  Scenario: Post a dream
    Given I am on the home page
    When I click "new_dream"
      Then I should be on the create new dream page
      And I fill in "title" with "dream1"
      And I fill in "content" with "description1"
    When I press "Create Dream"
	  Then I should see "dream1"
	  And I should see "description1"

  Scenario: Edit a dream
    Given the following dreams exist:
    | title             | text              |
    | this IS a tiTle 1 | this is text 1    |
    | this is a title 2 | this is text 2    |

    And I am on the home page

    Then I should see "this IS a tiTle 1"
    When I click "this_is_a_title_1"
      Then I should see "this IS a tiTle 1"
      And I should see "this is text 1"
      And I should see "Edit Dream"
      And I should be on the dream page with title: this IS a tiTle 1
      When I click "edit_dream"
      Then I should be on the edit dream page for title: this IS a tiTle 1
      When I fill in "title" with "dream1"
      And I fill in "content" with "descrahption1"
      And I press "Create Dream"
        Then I should see "dream1"
        And I should see "descrahption1"

Scenario: Delete a dream
    Given the following dreams exist:
    | title             | text              |
    | this IS a tiTle 1 | this is text 1    |
    | this is a title 2 | this is text 2    |

    And I am on the home page

    When I click "this_is_a_title_2"
      Then I should be on the dream page with title: this is a title 2
      When I click "delete_dream"
      Then I should be on the home page
      And I should not see "this is a title 2"