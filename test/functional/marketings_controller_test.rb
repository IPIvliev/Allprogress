require 'test_helper'

class MarketingsControllerTest < ActionController::TestCase
  test "should get kps" do
    get :kps
    assert_response :success
  end

  test "should get messages" do
    get :messages
    assert_response :success
  end

end
