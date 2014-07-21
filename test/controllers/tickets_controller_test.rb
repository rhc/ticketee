require "test_helper"

describe TicketsController do
  let(:user) { users(:john)  }
  let(:project) { projects(:textmate) }
  let(:ticket) { tickets(:feature_request) }

  describe "standard users" do
    it "cannot access a ticket fo a project" do
      sign_in(user)
      get :show, id: ticket.id, project_id: project.id

      assert_redirected_to root_path
      assert_equal flash[:alert], "The project you were looking for could not be found."
    end
  end
end
