Feature: Subthreads
  As a user
  I want to make comments on other people's comments.
	So that I can start a discussion about the dreams and any additional questions I might have.

	Scenario: View Subthread
		Given the following dreams exist:
			| title   | text  |  rating  |
			| title1  | text1 |  0       |
			| title2  | text2 |  1       |

		And I am on the home page

		And I see a dream with title "title1"
		And I click on on the dream titled "title1"
		Then I should be on the dream page with title "title1"
		And I should see the Subthreads for that dream

	Scenario: Post Subthread
		Given the following dream exist:
			| title   | text  |  rating  |
			| title1  | text1 |  0       |
			| title2  | text2 |  1       |

		And I am on the home page

		Then I should see a dream with title "title1"
		And I click on on the dream titled "title1"
		Then I should be on the dream page with title "title1"
		When I fill out the "Comment" with "my subthread"
		And I click "post"
		Then I should see "Comment: before "my subthread"