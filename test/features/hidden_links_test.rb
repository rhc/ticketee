require "test_helper"

feature "Hidden Links" do
  let(:user) { users(:john)}
  let(:admin) { users(:admin)}
  let(:project) {projects(:textmate)}

  describe 'Anonymous Users' do

    scenario "cannot see the New Project link" do
      visit root_path
      refute_link "New Project"
    end

    scenario "cannot see the Edit Project link" do
      visit project_path(project)
      refute_link "Edit Project"
    end


    scenario "cannot see the Delete Project link" do
      visit project_path(project)
      refute_link "Delete Project"
    end


  end

  describe "regular users" do
    before { sign_in_as users(:john)}
    scenario "cannnot see the New Project link" do
      visit root_path
      refute_link "New Project"
    end
  end

  describe "admin users" do
      before :each do
        sign_in_as users(:admin)
        scenario "can see the New Project link" do
          visit root_path
          assert_link "New Project"
        end
      end
  end

end
