Given (/^I am a new, logged-in user$/) do
  email = 'test@example.com'
  password = 'password'
  name = 'FreddyTheGhost'
  User.new(:name => name, :email => email, :password => password, :password_confirmation => password).save!

  visit '/login'
  fill_in "usr_email", :with => email
  fill_in "usr_password", :with => password
  click_button "login_btn"

end

Then /I should see "(.*)" before "(.*)"/ do |e1, e2|
  expect(page.body).to have_content(/.*#{e1}.*#{e2}.*/)
end
