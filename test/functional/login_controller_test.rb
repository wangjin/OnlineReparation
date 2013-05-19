require 'test_helper'

class LoginControllerTest < ActionController::TestCase
  test "should get tologin" do
    get :tologin
    assert_response :success
  end

end
