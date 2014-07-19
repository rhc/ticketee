require "test_helper"

feature "SigningUp" do
  scenario "Successful sign up" do
    visit root_path

    click_link 'Sign up'
    fill_in "Email", with: 'user@example.com'
    fill_in "Password", with: 'topsecret'
    fill_in "Password confirmation", with: 'topsecret'
    click_button "Sign up"

    assert_content "You have signed up successfully"
  end

end
