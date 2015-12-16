When(/^I go to the homepage$/) do
  visit root_path
end

Then(/^I should see request help button$/) do
  expect(page).to have_link('Request a help')
  
end