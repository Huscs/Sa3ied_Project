
Then(/^I should see "(.*?)"$/) do |arg1|
  expect(page).to have_content(arg1)

end

When(/^I fill out the search field with "(.*?)"$/) do |arg1|
  fill_in "search", :with => "1"

end

When(/^I press "(.*?)"$/) do |arg1|
  click_button "Search"
end

Then(/^I should go to volunteers page and I see Volunteers List$/) do
  visit "/volunteers"
  expect(page).to have_content("Volunteers List")
end


