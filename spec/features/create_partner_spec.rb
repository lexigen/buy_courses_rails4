require 'spec_helper'

feature "Create a partner" do
  before do
    visit '/'
    click_link "New Partner"
  end

  context "all required data provided" do
    scenario "creating a partner" do |variable|
      fill_in "Title", with: "First Partner"
      fill_in "Address", with: "Moscow 1"
      fill_in "Email", with: "example@mail.com"
      fill_in "Phone", with: "12345678"
      click_button "Create Partner"

      expect(page).to have_content("The partner has been successfully created.")
    end
  end

  context "some required data is missing" do
    scenario "creating a partner" do |variable|
      fill_in "Title", with: "First Partner"
      click_button "Create Partner"

      expect(page).to have_content("The partner has not been created.")
    end
  end

  context "phone data is invalid" do
    scenario "creating a partner" do |variable|
      fill_in "Phone", with: "dfgh"
      click_button "Create Partner"

      expect(page).to have_content("The partner has not been created.")
      expect(page).to have_content("Phone is not a number")
    end
  end

  context "phone data is invalid" do
    scenario "creating a partner" do |variable|
      fill_in "Email", with: "dfgh"
      click_button "Create Partner"

      expect(page).to have_content("The partner has not been created.")
      expect(page).to have_content("Email is invalid")
    end
  end
end