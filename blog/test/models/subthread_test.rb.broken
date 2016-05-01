require 'test_helper'

class SubthreadTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end

  def setup
    @comment = comments(:michael)
    @subthread = @comment.subthreads.build(content: "This is a test")
  end

  test "should be valid" do
    assert @subthread.vaild?
  end

  test "comment id should be present" do
    @subthread.comment_id = nil
    assert_not @subthread.valid?
  end
end
