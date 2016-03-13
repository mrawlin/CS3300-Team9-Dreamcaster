Feature: New Dream
	
	As a user
  I want to create a dream
  So that I can participate in the community

  Scenario: Create a dream
    Given I am on the home page
    When I click "new_dream"
    Then I should be on the new dream page
    And I fill in "title" with "dream1"
    And I fill in "content" with "description1"
    When I press "Create Dream"
	  Then I should see "dream1"
	  And I should see "description1"