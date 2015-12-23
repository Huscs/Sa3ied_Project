Given(/^I am on home page$/) do
  visit root_path

end

When(/^I follow "(.*?)"$/) do |arg1|
  visit rateme_path
end

Then(/^I should see Rate Volunteer$/) do
  expect(page).to have_content('Rate Volunteer')

end

When(/^I fill out email and score with valid data$/) do
  # fill_in 'Email', with: "huscs@gmail.com"
  # fill_in 'Rate', with: "5"
  find(:css, "input[id$='email']").set("huscs@gmail.com")
  find(:css, "input[id$='score']").set("5")

end
    
When(/^I press Rate$/) do 
  click_button "Rate"
end

Then(/^I should see Volunteer has been rated$/) do
  expect(page).to have_content("volunteer has been rated")

end









