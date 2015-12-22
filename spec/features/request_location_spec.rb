require 'rails_helper'

RSpec.feature "Request Help" do 

  scenario "A help seeker create a new location" do
    visit "/" #Root

    click_link "Request a help"

    fill_in "Location", with: "King Saud University"
    fill_in "Address", with: "Riyadh, Riyadh Province"
    fill_in "Description", with: "change car tyre"
    fill_in "Latitude", with: ""
    fill_in "Longitude", with: ""

    click_button "Create Location"

    expect(page).to have_content("Location was successfully created.")


  end

  scenario "A help seeker fails to create a new location" do
     visit "/" #Root

    click_link "Request a help"

    fill_in "Location", with: ""
    fill_in "Address", with: ""

    click_button "Create Location"

    expect(page).to have_content("Location has not been created")
    expect(page).to have_content("Location can't be blank")
    expect(page).to have_content("Address can't be blank")

  end

  
end