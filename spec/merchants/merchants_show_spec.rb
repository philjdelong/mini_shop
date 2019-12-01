require 'rails_helper'

RSpec.describe "As a user" do
  describe "when i visit a merchants show page", type: :feature do
    before :each do

      @phil = Merchant.create(
        name: "Phil DeLong",
        address: "3102 N. Race St.",
        city: "Denver",
        state: "CO",
        zip: 80205
        )

      visit "/merchants/#{@phil.id}"
    end

    it "i can click a link to update the merchant information" do
      click_on 'Edit info'
      expect(current_path).to eq("/merchants/#{@phil.id}/edit")

      fill_in 'Name', with: 'DeLong Phil'
      fill_in 'Address', with: '1501 Wazee St.'
      fill_in 'City', with: 'Nedver'
      fill_in 'State', with: 'OC'
      fill_in 'Zip', with: '00000'

      click_on 'Update'
      expect(current_path).to eq("/merchants/#{@phil.id}")

      expect(page).to have_content("DeLong Phil")
      expect(page).to_not have_content("Phil DeLong")

      expect(page).to have_content("1501 Wazee St.")
      expect(page).to_not have_content("3102 N. Race St.")
    end
  end
end
