Given(/^I am at the homepage$/) do
  visit '/'
end

When(/^no name has yet been entered$/) do
  pending # express the regexp above with the code you wish you had
end


When(/^I enter my name$/) do
  fill_in :name, :with => :name
end

Then(/^I should see "(.*?)"$/) do |content|
  expect(page).to have_content "Let's go catch some Pokemon"
end

