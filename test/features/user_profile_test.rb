require "test_helper"

feature "Profile page" do
  scenario "viewing" do
    user = users(:john)

    visit user_path(user)
    
    assert_content user.name
    assert_content user.email
  end
end

feature "Editing users" do
  scenario "Updating a project" do 
    user = users(:john)
    
    visit user_path(user)
    click_link "Edit Profile"
    fill_in "Username", with: "new_username"
    click_button "Update Profile"
    
    assert_content "Profile has been updated" 
  end

end
