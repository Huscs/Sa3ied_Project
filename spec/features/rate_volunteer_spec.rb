require 'rails_helper'

RSpec.feature "Rate a volunteer" do 

  scenario "A help seeker can rate a volunteer" do
    visit "/" #Root

    click_link "Rate a Volunteer"



    fill_in "Email", with: "haldriye@gmail.com"
    fill_in "Score", with: "5"

    click_button "Rate"

    expect(page).to have_content("Volunteer has been rated")


  end
  
end