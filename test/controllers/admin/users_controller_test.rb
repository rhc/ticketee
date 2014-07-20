require "test_helper"

describe Admin::UsersController do
  let(:user) { users(:john)}

  describe "Standard users" do
    before :each do
      sign_in(user)
    end

    it "are not able to access the index action" do
      get :index
      assert_redirected_to root_path
      assert_equal flash[:alert], "You must be an admin to do that"
    end

  end


end
