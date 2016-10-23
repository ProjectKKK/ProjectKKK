require 'test_helper'

class TagControllerTest < ActionController::TestCase
  test "should get life" do
    get :life
    assert_response :success
  end

  test "should get interior" do
    get :interior
    assert_response :success
  end

  test "should get hobby" do
    get :hobby
    assert_response :success
  end

  test "should get electric" do
    get :electric
    assert_response :success
  end

  test "should get outdoor" do
    get :outdoor
    assert_response :success
  end

  test "should get vehicle" do
    get :vehicle
    assert_response :success
  end

  test "should get others" do
    get :others
    assert_response :success
  end

end
