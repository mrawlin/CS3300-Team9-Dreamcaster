require 'test_helper'

class DreamTest < ActiveSupport::TestCase

  def setup
    @user = users(:michael)
    # This code is not idiomatically correct.
    @dream = Dream.new(text: "Lorem ipsum", user_id: @user.id)
  end

  test "should be valid" do
    assert @dream.valid?
  end

  test "user id should be present" do
    @dream.user_id = nil
    assert_not @dream.valid?
  end
end
