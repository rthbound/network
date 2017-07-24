require 'test_helper'

class CommonTaskTest < ActiveSupport::TestCase
  test "common task without owner is valid" do
    CommonTask.new.valid?
  end
end
