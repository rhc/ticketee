require "test_helper"

describe ProjectsController do
  let(:user) { users(:john)}

  describe "standard users" do
    before :each do
      sign_in(user)
    end

    it "cannot access the new action" do
      get :new

      assert_redirected_to '/'
      assert_equal flash[:alert], "You must be an admin to do that"
    end
  end

  it "display an error for a missing project" do
    get :show, id: "not-here"
    assert_redirected_to projects_path

    message = "The project you were looking for could not be found."
    assert_equal flash[:alert], message
  end


end
