require "test_helper"

feature "Admin::DeletingUsers" do
  let(:admin) { users(:admin)  }

  before :each do
    sign_in_as admin
    visit root_path
    click_link 'Admin'
    click_link "Users"
  end

  scenario "Delete User" do
    click_link users(:john)
    click_link "Delete User"

    assert_content "User has been deleted."
  end

  scenario "Users cannot delete themselves" do
    click_link admin.email
    click_link "Delete User"
    
    assert_content "You cannot commit suicide"
    assert_content admin.email
  end
  
  
end
