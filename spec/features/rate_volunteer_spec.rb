require 'rails_helper'

RSpec.feature "Rate a volunteer" do 

  scenario "A help seeker can rate a volunteer" do
    visit "/" #Root

    click_link "Rate a Volunteer"

    click_link "Rate me"


    # fill_in "Location", with: "King Saud University"
    # fill_in "Address", with: "Riyadh, Riyadh Province"
    # fill_in "Description", with: "change car tyre"
    # fill_in "Latitude", with: ""
    # fill_in "Longitude", with: ""

    # click_button "Create Location"

    # expect(page).to have_content("Location was successfully created.")


  end
  
end