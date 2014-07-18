require "test_helper"

feature "DeletingTickets" do
  let(:project) { projects(:textmate)}
  let(:ticket) { tickets(:feature_request)}

  before do
    visit root_path
    click_link project.name
    click_link ticket.title
  end

  scenario "I can delete ticket" do
    click_link "Delete Ticket"

    assert_content "Ticket has been deleted."
    assert_equal page.current_path, project_path(project)
  end
end
