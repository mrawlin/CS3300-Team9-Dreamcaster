require "Dream"

Given(/^I am a user viewing the home page$/) do
	assert_equal user.type, "user"
end

Then(/^I want to make a new post$/) do
	@user.postable?.should == true
end
