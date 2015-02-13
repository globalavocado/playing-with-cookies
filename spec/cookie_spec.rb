require 'spec_helper'

describe CookieGame do 
	let(:player) {Player.new("Kevin")}

	it "user has a name" do
		player = User.new
		expect(user.name).to eq("Kevin")
	end

end