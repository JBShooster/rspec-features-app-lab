require 'rails_helper'

feature 'Visitor has a zipcode in their cookies' do
  before do
    page.driver.browser.set_cookie("zipcode=94122")
    visit root_path
  end

  scenario 'raining' do
    expect(page).to have_content("It's raining!")
    expect(page).to have_content("Get that umbrella now!")
  end
end