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

  Scenario: Delete a dream
    Given I am on the dreams page
    When I click "delete_dream"
          Then dream should be deleted
          And I am on the home page


  Scenario: Edit a dream
   Given I am on the dreams page
   When I click "edit_dream"
         Then I should be on the edit dream page
         And I fill in "title" with "dream1"
         And I fill in "content" with "descroption1"
   When I press "Create Dream"
         Then I should see "dream1"
         And I should see "description1"