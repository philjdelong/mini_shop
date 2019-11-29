require 'rails_helper'

RSpec.describe "As a user" do
  describe "when i visit the merchants index page", type: :feature do

    it "i can click link to create a new merchant" do
      visit "/merchants"
      expect(page).to_not have_content("Phil DeLong")
      click_on "New Merchant"
      expect(current_path).to eq("/merchants/new")

      fill_in 'Name', with: "Phil DeLong"
      fill_in 'Address', with: "3102 N. Race St."
      fill_in 'City', with: "Denver"
      fill_in 'State', with: "CO"
      fill_in 'Zip', with: 80205

      click_on "Create"
      expect(current_path).to eq("/merchants")

      expect(page).to have_content("Phil DeLong")
    end
  end
end
