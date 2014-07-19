require "test_helper"

feature "Signing in" do
  scenario "signing via form" do
    skip  

    user = users(:john)

    visit root_path
    click_link "Sign in"
    fill_in "Name", with: user.name
    fill_in "Password", with: 'topsecret'
    click_button "Sign in"

    assert_content page, "Signed in successfully."
  end
end
