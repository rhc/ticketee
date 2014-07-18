require "test_helper"

feature "ViewingTickets" do

  before do
    visit root_path
  end

  scenario "I can view tickets for a given project" do
    click_link "TextMate 2"

    assert_content "Make it shiny!"
    refute_content "Standards compliance"

    click_link "Make it shiny!"
    assert_content page, "mess" 
    within("#ticket h2") do
      assert_content "Make it shiny!"
    end

    assert_content page, "Gradients! Starbursts! Oh my!"
  end
end
