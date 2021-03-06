Feature: Playing
	In order to play
	As a player
	I need to insert a name

	Scenario: A player can register
		Given I am on the home page
		When I click on "register your name"
		And be on the intro page
		Then I should be able to enter my name

		Scenario: A player can remove their name
		Given I am registered to play
		When I click on "remove your name"
		Then my name should be removed

		Scenario: A player can pass their name on to a second page
		Given I am registered to play
		When I click on "keep playing"
		Then my name should appear on the next page

		Scenario: A player can pass on their name from the second to the third page
		Given I am registered to play
		And I click on "keep playing"
		And my name should appear on the next page
		When I click on "carry on"
		Then my name should appear on the third page