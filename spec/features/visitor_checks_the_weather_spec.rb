require "rails_helper"

feature "Visitor checks the weather" do 
  scenario "sunny" do
    #setup
    visit root_path
    
    #exercise
    fill_in "What's your zipcode?", with: "94702"
    click_button "Is it going to rain?"

    #verify
    expect(page).to have_content("Sun's gonna be shining!")
    expect(page).to have_content("No umbrella needed.")
  end 
end