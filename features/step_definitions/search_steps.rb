When(/^I fill out the search field with "(.*?)"$/) do |arg1|
  fill_in "search", :with => "1"

end

When(/^I press Search$/) do
  click_button "Search"

end


Then(/^I should see the top rated volunteers with rating grater than or equle "(.*?)" if exist$/) do |arg1|
  
  User.search(arg1)
  expect(page.current_path).to eq(search_path)

end

