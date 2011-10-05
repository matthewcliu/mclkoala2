require 'test_helper'

class PagesControllerTest < ActionController::TestCase
  test "should get home" do
    get :home
    assert_response :success
  end

  test "should get noauth" do
    get :noauth
    assert_response :success
  end

  test "should get fakeauth" do
    get :fakeauth
    assert_response :success
  end

  test "should get realauth" do
    get :realauth
    assert_response :success
  end

end
