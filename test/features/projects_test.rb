require "test_helper"

feature "Projects" do
  scenario "creating projects" do
    visit root_path
    click_link "New Project"

    fill_in "Name", with: 'TextMate 2'
    fill_in "Description", with: "A text-editor for OS X"
    click_button 'Create Project'

    assert_content page, 'Project has been created.'
  end
end
