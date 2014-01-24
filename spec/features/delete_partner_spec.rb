require 'spec_helper'

feature "Delete partner" do
  let!(:partner) { FactoryGirl.create(:partner) }

  scenario "viewing partner's info" do |variable|
    visit '/'
    click_link partner.title
    click_link "Delete Partner"

    expect(page).to have_content("The partner has been destroyed.")
    expect(page).to_not have_content(partner.title)
  end
end