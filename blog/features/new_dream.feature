Feature: Post Dream

	As a user
  I want to post my dream to the DreamCasters community.
  So that I can share my dreams with other users.

  Scenario: Post a dream
    And I am on the home page

    When I click "new_dream"
      Then I should be on the create new dream page
      And I fill in "title" with "dream1"
      And I fill in "content" with "description1"
    When I press "Create Dream"
	  Then I should see "dream1"
	  And I should see "description1"

  Scenario: Edit a dream
    Given the following dreams exist:
    | title             | content           |
    | this IS a tiTle 1 | this is text 1    |
    | this is a title 2 | this is text 2    |

    Given I am a new, logged-in user

    And I am on the home page

    When I click "new_dream"
      Then I should be on the create new dream page
      And I fill in "title" with "dream1"
      And I fill in "content" with "description1"
    When I press "Create Dream"
    Then I should see "dream1"
    And I should see "description1"

    Given I am on the home page

    When I click "dream1"
      Then I should see "dream1"
      And I should see "description1"
      And I should be on the dream page with title: dream1
      When I click "edit_dream"
      Then I should be on the edit dream page for title: dream1
      When I fill in "title" with "dream1.1"
      And I fill in "content" with "descrahption1.1"
      And I press "Create Dream"
        Then I should see "dream1.1"
        And I should see "descrahption1.1"

Scenario: Delete a dream
    Given the following dreams exist:
    | title             | content           |
    | this IS a tiTle 1 | this is text 1    |
    | this is a title 2 | this is text 2    |

    Given I am a new, logged-in user

    And I am on the home page

    When I click "new_dream"
      Then I should be on the create new dream page
      And I fill in "title" with "dream2"
      And I fill in "content" with "description2"
    When I press "Create Dream"
    Then I should see "dream2"
    And I should see "description2"

    Given I am on the home page
    
    When I click "dream2"
      Then I should be on the dream page with title: dream2
      When I click "delete_dream"
      Then I should be on the home page
      And I should not see "dream2"
      