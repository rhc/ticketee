require "test_helper"

describe ProjectsController do
  it "display an error for a missing project" do
    get :show, id: "not-here"
    assert_redirected_to projects_path
    message = "The project you were looking for could not be found."
    assert_equal flash[:alert], message
  end
end
