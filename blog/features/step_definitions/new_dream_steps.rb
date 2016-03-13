Given /^(?:|I )am on (.+)$/ do |page_name|
  visit path_to(page_name)
end

When(/^I click "([^"]*)"$/) do |link|
  click_link(link)
end

When(/^I press "([^"]*)"$/) do |button|
  click_button(button)
end

When(/^I fill in "([^"]*)" with "([^"]*)"$/) do |field, value|
  fill_in(field, :with => value)
end

Then(/^page should have table \| Title: title(\d+) \| Text: description(\d+) \|$/) do |arg1, arg2|
  pending # Write code here that turns the phrase above into concrete actions
end

Then(/^I should see "([^"]*)"$/) do |item|
  item = Regexp.new(item)

  if page.respond_to? :should
    expect(page).to have_xpath('//*', :text => item)
  else
    assert page.has_xpath?('//*', :text => item)
  end
end

Then(/^page should be new dreams page$/) do

  current_path = URI.parse(current_url).path

  expect(current_path).to match("/dreams/[0-9]+")
end


Then /^(?:|I )should be on (.+)$/ do |page_name|
	expect(page).to have_current_path(path_to(page_name), only_path: true)
end

