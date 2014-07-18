require "test_helper"

feature "EditingProjects" do

  before do 
    visit root_path
    click_link "TextMate 2"
    click_link "Edit Project"
  end

  scenario "I can update a project" do
    
    fill_in "Name", with: "TextMate 2 beta"
    click_button "Update Project"

    assert_content page, "Project has been updated." 
  end

  scenario "I can not update a project with invalid attributes" do
    fill_in "Name", with: ""
    click_button "Update Project" 
    assert_content page, "Project has not been updated."
  end
end
