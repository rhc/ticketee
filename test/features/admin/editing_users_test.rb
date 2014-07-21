require "test_helper"

feature "Admin::EditingUsers" do
  let(:admin) { users(:admin)  }
  let(:user) { users(:john) }

  before :each do
    sign_in_as admin
    visit root_path
    click_link "Admin"
    click_link "Users"
    click_link user.email
    click_link "Edit User"
  end

  scenario "Updating a user's details" do
    fill_in "Email", with: "newguy@example.com"
    click_button "Update User"

    assert_content "User has been updated."
    within("#users") do
      assert_content "newguy@example.com"  
      refute_content user.email
    end
  end

  scenario "Toggling user's admin ability" do
    check "Is an admin?"
    click_button "Update User"

    assert_content "User has been updated."
    within("#users") do
      assert_content "#{user.email} (Admin)"
    end
  end
  
  
end
