require 'spec_helper'

feature "Show partner profile" do
  let!(:partner) { FactoryGirl.create(:partner) }

  scenario "viewing partner's info" do |variable|
    visit '/'
    click_link partner.title

    expect(page).to have_content(partner.email)
  end
end