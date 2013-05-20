require 'test_helper'

class ManagercenterControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
  end

  test "should get materials" do
    get :materials
    assert_response :success
  end

  test "should get accendants" do
    get :accendants
    assert_response :success
  end

  test "should get messages" do
    get :messages
    assert_response :success
  end

  test "should get informations" do
    get :informations
    assert_response :success
  end

end
