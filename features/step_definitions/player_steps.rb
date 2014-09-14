When(/^I click on "click here to register your name"$/) do
	click_button('click here to register your name')
end

When(/^be on the intro page$/) do
	visit '/intro'
end

Then(/^I should be able to enter my name$/) do
	 expect(page).to have_button("new game")
end