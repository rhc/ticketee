require "test_helper"

feature "Viewing Projects" do
  scenario "I can see a list of all projects" do
    project = projects(:textmate)
    visit root_path
    click_link 'TextMate 2'
    assert_equal page.current_url.split("/").last, project_url(project).split('/').last

  end
end
