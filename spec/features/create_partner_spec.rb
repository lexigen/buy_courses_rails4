require 'spec_helper'

feature "Create a partner" do |variable|
  scenario "creating a partner" do |variable|
    visit '/'
    click_link "New Partner"

    fill_in "Title", with: "First Partner"
    fill_in "Address", with: "Moscow 1"
    fill_in "Email", with: "example@mail.com"
    fill_in "Phone", with: "12345678"
    click_button "Create Partner"

    expect(page).to have_content("The partner has been successfully created.")
  end
end