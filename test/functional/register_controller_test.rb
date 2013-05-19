require 'test_helper'

class RegisterControllerTest < ActionController::TestCase
  test "should get toregister" do
    get :toregister
    assert_response :success
  end

end
