Feature: Playing
	In order to play
	As a player
	I need to insert a name

	Scenario: A player can register
		Given I am on the home page
		When I click on "click here to register your name"
		And be on the intro page
		Then I should be able to enter my name
