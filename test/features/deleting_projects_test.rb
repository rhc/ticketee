require "test_helper"

feature "To manage projects as administrator" do
  scenario "I can delete project" do
    sign_in_as users(:admin)
    visit root_path
    click_link "TextMate 2"
    click_link "Delete Project"

    assert_content page, "Project has been destroyed."

    visit root_path

    refute_content page, "TextMate 2"
  end
end
