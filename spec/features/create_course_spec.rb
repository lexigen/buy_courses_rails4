require 'spec_helper'

feature "Create a course" do
  let!(:partner) { FactoryGirl.create(:partner) }
  
  before do
    visit '/'
    click_link partner.title
    click_link "New Course"
  end

  scenario "all required data provided" do 
    fill_in "Title", with: "First course"
    fill_in "Description", with: "You will get very useful knowledge here!"
    fill_in "Price", with: "3000"
    fill_in "Attendees", with: "15"
    click_button "Create Course"

    expect(page).to have_content("The course has been successfully created.")
  end

  scenario "some required data is missing" do
    fill_in "Title", with: "First course"
    click_button "Create Course"

    expect(page).to have_content("The course has not been created.")
  end

end