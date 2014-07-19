require "test_helper"

feature "Editing Tickets" do
  let(:user) { users(:john)}
  let(:project ) {projects(:textmate) }
  let(:ticket) { tickets(:feature_request)}
  
  before :each do
    sign_in_as user

    visit root_path
    click_link project.name
    click_link ticket.title
    click_link 'Edit Ticket'
  end

  scenario "Updating a ticket" do
    fill_in 'Title', with: 'Make it really shiny!'
    click_button "Update Ticket"
    assert_content "Ticket has been updated."

    within('#ticket h2') do |args|
      assert_content "Make it really shiny!"
    end

    refute_content ticket.title
  end

  scenario "I cannot update a ticket with invalid information" do 
    fill_in "Title", with: ''
    click_button "Update Ticket"

    assert_content "Ticket has not been updated."

    
  end
end
