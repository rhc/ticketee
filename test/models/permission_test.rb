require "test_helper"

describe Permission do
  let(:permission) { Permission.new }

  it "must be valid" do
    permission.must_be :valid?
  end
end
