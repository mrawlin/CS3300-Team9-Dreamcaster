Feature: Up or Down Vote a Post
	As a user.
	I want to up/down vote a dream based on it’s quality and/or my interest in it.
	So that I can help the community with content quality control.

	Scenario: Up voting
		Given I am a user viewing a post
		Then I want to up vote a post

	Scenario: Down voting
		Given I am a user viewing a post
		Then I want to down vote a post