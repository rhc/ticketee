require "test_helper"

feature "Projects" do

before  do
    sign_in_as users(:admin)
    visit root_path
    click_link "New Project"
  end


  scenario "An administrator can create projects" do

    fill_in "Name", with: 'TextMate 2'
    fill_in "Description", with: "A text-editor for OS X"
    click_button 'Create Project'

    assert_content page, "Project has been created."

    project = Project.where(name: "TextMate 2").last
    assert_equal page.current_path, project_path(project)

    title = "TextMate 2 - Projects - Ticketee"
    assert_equal page.title, title


  end

  scenario  "Can not create a project without a name" do
    click_button 'Create Project'

    assert_content page, "Project has not been created."
    assert_content page, "Name can't be blank"
  end

end
