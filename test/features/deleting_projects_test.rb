require "test_helper"

feature "DeletingProjects" do
  scenario "the test is sound" do
    visit root_path
    click_link "TextMate 2"
    click_link "Delete Project"

    assert_content page, "Project has been destroyed."

    visit root_path

    refute_content page, "TextMate 2"
  end
end
