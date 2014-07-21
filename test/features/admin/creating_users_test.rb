require "test_helper"

feature "Admin::CreatingUsers" do
  before do
    sign_in_as users(:admin)
    visit root_path
    click_link "Admin"
    click_link "Users"
    click_link "New User"
  end

  scenario "Creating a new user" do
    fill_in "Email", with: "newbie@example.com"
    fill_in "Password", with: 'topsecret'
    click_button "Create User"
    assert_content "User has been created."
  end

  scenario "Creating an admin user" do
    fill_in "Email", with: "alino@example.com"
    fill_in "Password", with: "topsecret"
    check "Is an admin?"
    click_button "Create User"
    
    assert_content "User has been created"

    within("#users") do
      assert_content "alino@example.com (Admin)"
    end
  end
  
  

  
end
