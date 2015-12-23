require 'rails_helper'


RSpec.feature "Rate a volunteer" do 

  scenario "A help seeker can rate a volunteer" do
    visit "/" #Root

    click_link "Rate a Volunteer"



    fill_in "Email", with: "haldriye@gmail.com"
    fill_in "Score", with: "5"

    click_button "Rate"

    expect(page).to have_content("volunteer has been rated")
    expect(page.current_path).to eq(rateme_path)

  end

  scenario "A help seeker fails to rate a volunteer" do
    visit "/" #Root

    click_link "Rate a Volunteer"

    fill_in "Email", with: ""
    fill_in "Score", with: "6"

    click_button "Rate"

    expect(page).to have_content("please enter a valid email address & score")

  end


  
end