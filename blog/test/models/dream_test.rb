require 'test_helper'

class DreamTest < ActiveSupport::TestCase

  def setup
    @user = users(:michael)
    # This code is not idiomatically correct.
    @dream = Dream.new(content: "Lorem ipsum", user_id: @user.id)
  end

  test "should be valid" do
    assert @dream.valid?
  end

  test "user id should be present" do
    @dream.user_id = nil
    assert_not @dream.valid?
  end

   test "content should be present" do
    @dream.content = "    "
    assert_not @dream.valid?
   end

   test "content should be at most 140 characters" do
    @dream.content = "a" * 141
    assert_not @dream.valid?
   end
  
  test "order should be most recent first" do 
   assert_equal dreams(:most_recent), Dream.first
  end

end
