require 'spec_helper'

feature "Edit partner profile" do
  let!(:partner) { FactoryGirl.create(:partner) }
  before do
    visit '/'
    click_link partner.title
    click_link "Edit Partner"
  end

  scenario "viewing partner's info" do |variable|
    fill_in "Title", with: "New Title"
    fill_in "Address", with: "Moscow 1"
    fill_in "Email", with: "example@mail.com"
    fill_in "Phone", with: "12345678"
    click_button "Update Partner"

    expect(page).to have_content("New Title")
  end
end