Feature: Make New Post
	In order to make a new Dream #overall goal of the feature
        As a user.                   #condition
	I want to post my dream to the DreamCasters community. 
	So that I can share my dreams with other users.

	Scenario: Making a new post
		Given I am a user viewing the home page   #Precondition
		And I press "New Dream"                   #Condition that is fulfilled to cause an action
                Then show me Dream new page #I believe this will show the new page, check syntax here, I am not sure
                When I explain my dream
                And I press "Save dream"
                Then my dream should be saved to the database
                And I should see my new dream #show the page of the new dream that has been submitted
                
