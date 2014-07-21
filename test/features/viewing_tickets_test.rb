require "test_helper"

feature "ViewingTickets" do
  let(:user) {users(:john)  }
  let(:project) { projects(:textmate)  }

  before do
    define_permission(user, :view, project)
    visit root_path
    sign_in_as user
  end

  scenario "I can view tickets for a given project" do
    click_link  project.name

    assert_content "Make it shiny!"
    refute_content "Standards compliance"

    click_link "Make it shiny!"
    within("#ticket h2") do
      assert_content "Make it shiny!"
    end

    assert_content page, "Gradients! Starbursts! Oh my!"
  end
end
