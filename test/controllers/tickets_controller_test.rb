require "test_helper"

describe TicketsController do
  let(:user) { users(:john)  }
  let(:project) { projects(:textmate) }
  let(:ticket) { tickets(:feature_request) }

  describe "standard users" do
    describe "with permission to view the project" do
      before :each do
        sign_in(user)
        define_permission(user, 'view', project)
      end
  
      it "cannot begin to create a ticket" do
        get :new, project_id: project.id
        assert_cannot_create_tickets
      end

      it "cannot create a ticket without permission" do
        post :create, project_id: project.id
        assert_cannot_create_tickets
      end

    def assert_cannot_create_tickets
      assert_redirected_to project
      assert_equal flash[:alert], "You cannot create tickets on this project."
    end
  end
 end

end
