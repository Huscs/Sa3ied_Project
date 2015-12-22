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
  
end