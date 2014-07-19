require "test_helper"

feature "Creating Tickets" do
  before do
    project = projects(:ie)
    user = users(:john)
    visit root_path
    click_link  project.name
    click_link "New Ticket"
    message = "You need to sign in or sign up before continuing."
    assert_content message

    fill_in "Name", with: user.name
    fill_in "Password", with: 'topsecret'
    click_button "Sign in"

    click_link project.name
    click_link "New Ticket"

  end


  scenario "User can create a ticket" do
    fill_in "Title", with: "Non-standards compliance"
    fill_in "Description", with: "My pages are ugly"
    click_button "Create Ticket"

    assert_content page, "Ticket has been created"

    within "#ticket #author" do
      assert_content "Created by jkyony@example.com"
    end
  end

  scenario "I can not create a ticket without valid attributes" do
    click_button "Create Ticket"
    assert_content page, "Ticket has not been created."
    assert_content page, "Title can't be blank"
    assert_content page, "Description can't be blank"

  end

  scenario 'I must add description longer than 10 characters' do
    fill_in "Title", with: "Non-standards compliance"
    fill_in "Description", with: "it sucks"
    click_button "Create Ticket"

    assert_content "Ticket has not been created"
    assert_content "Description is too short"
  end

end
