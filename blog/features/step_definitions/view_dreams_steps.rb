
Given /the following dreams exist/ do |dream_table|
  dream_table.hashes.each do |dream|
    Dream.create!(dream)
  end
end

Then(/^I should not see "([^"]*)"$/) do |item|
  item = Regexp.new(item)

  if page.respond_to? :should
    expect(page).to have_no_xpath('//*', :text => item)
  else
    assert page.has_no_xpath?('//*', :text => item)
  end
end
