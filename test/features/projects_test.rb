require "test_helper"

feature "Projects" do
  scenario "creating projects" do
    visit root_path
    click_link "New Project"

    fill_in "Name", with: 'TextMate 2'
    fill_in "Description", with: "A text-editor for OS X"
    click_button 'Create Project'

    assert_content page, "Project has been created."

    #project = Project.where(name: "TextMate 2").first
    #assert_equal page.current_url, project_url(project)

    title = "TextMate 2 - Projects - Ticketee"
    assert_equal page.title, title


  end
end
