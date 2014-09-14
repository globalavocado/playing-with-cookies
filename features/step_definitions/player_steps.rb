Given(/^I am registered to play$/) do
  visit '/intro'
  fill_in "player", with: "Kevin"
  click_button "new game"
end

When(/^I click on "click here to register your name"$/) do
	click_button('click here to register your name')
end

When(/^be on the intro page$/) do
	visit '/intro'
end

Then(/^I should be able to enter my name$/) do
	 expect(page).to have_button("new game")
end

When(/^I click on "click here to remove your name"$/) do
	click_button ('click here to remove your name')
end

Then(/^my name should be removed$/) do
	expect(page).to have_content("Bye bye, your name has been removed!")
end

When(/^I click on "click here to keep playing"$/) do
	click_button ('click here to keep playing')
end

Then(/^my name should appear on the next page$/) do
	visit '/still'
	expect(page).to have_content("Kevin")
end

When(/^I click on "click here to carry on"$/) do
	click_button ('click here to carry on')
end

Then(/^my name should appear on the third page$/) do
	visit '/still'
	expect(page).to have_content("Kevin")
end