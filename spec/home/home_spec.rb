require 'rails_helper'

RSpec.describe "As a user" do
  describe "when i visit the home page", type: :feature do
    before :each do

      visit '/'
    end

    it "i can see a welcome message" do
      expect(page).to have_content("Welcome")
    end
  end
end
