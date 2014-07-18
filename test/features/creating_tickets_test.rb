require "test_helper"

feature "Creating Tickets" do
  before do
    visit root_path
    click_link "Internet Explorer"
    click_link "New Ticket"
  end


  scenario "I can create a ticket" do
    fill_in "Title", with: "Non-standards compliance"
    fill_in "Description", with: "My pages are ugly"
    click_button "Create Ticket"

    assert_content page, "Ticket has been created"
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
