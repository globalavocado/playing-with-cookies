require 'spec_helper'

describe CookieGame do 
	let(:player) {Player.new("Kevin")}

	it "user has a name" do
		player = User.new
		expect(user.name).to eq("Kevin")
	end

	# it "can make a pick" do 
	# 	player.picks = "rock"
	# 	expect(player.pick).to eq("rock")
	# end

end