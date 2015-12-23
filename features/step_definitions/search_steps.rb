When(/^I fill out the search field with a valid score$/) do
  
  find(:css, "input[id$='search_name']").set("5")

end

When(/^I press Search$/) do
  click_button "Search"
end

Then(/^I should see the top rated volunteers with rating grater than or equle score\.$/) do

end

Then(/^I should see message "(.*?)"$/) do |arg1|

end
