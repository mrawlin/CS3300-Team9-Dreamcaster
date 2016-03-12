require 'test_helper'

class DreamcastersControllerTest < ActionController::TestCase
  test "should get newpost" do
    get :newpost
    assert_response :success
  end

end
