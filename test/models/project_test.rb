require "test_helper"

describe Project do
  let(:project) { Project.new }

  it "must be invalid" do
    project.must_be :invalid?
  end
end
