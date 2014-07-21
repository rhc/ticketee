require "test_helper"

describe ProjectsController do
  let(:user) { users(:john)}
  before :each do
    sign_in(user)
  end

  it "display an error for a missing project" do
    get :show, id: "not-here"
    assert_redirected_to projects_path

    message = "The project you were looking for could not be found."
    assert_equal flash[:alert], message
  end

  it "cannot access the show action without permission" do
    project = projects(:textmate)
    get :show, id: project.id

    assert_redirected_to projects_path
    assert_equal flash[:alert], "The project you were looking for could not be found."
  end

  describe "standard users" do
    {new: :get, create: :post, edit: :get, update: :post, destroy: :delete}.each do |action, method|
      it "cannot access the #{action} action" do
        sign_in(user)
        send(method, action, :id => projects(:textmate))

        assert_redirected_to root_path
        assert_equal flash[:alert], "You must be an admin to do that"
      end
    end
  end


end
