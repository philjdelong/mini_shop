require 'rails_helper'

RSpec.describe "As a user" do
  describe "when i visit the merchants index page", type: :feature do
    before :each do
      @phil = Merchant.create(
        name: "Phil DeLong",
        address: "3102 N. Race St.",
        city: "Denver",
        state: "CO",
        zip: 80205
        )
      @courtney = Merchant.create(
        name: "Courtney Newby",
        address: "1501 Wazee St., Apt. 3F",
        city: "Denver",
        state: "CO",
        zip: 80202
        )
        visit '/merchants'
      end

    it "i can see the name of each merchant in the system" do
      expect(page).to have_content(@phil.name)
      expect(page).to have_content(@courtney.name)
    end
  end
end
