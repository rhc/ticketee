require "test_helper"

feature "Viewing Projects" do
  let(:user) { users(:john) }
  let(:project) {projects(:textmate)  }

  before do
    sign_in_as user
    define_permission user, :view, project
  end

  scenario "Listing all projects" do
    visit root_path
    click_link project.name 
    #assert_equal page.current_url.split("/").last, project_url(project).split('/').last
    assert_equal page.current_url.split("/").last, project_url(project).split('/').last
  end
end
