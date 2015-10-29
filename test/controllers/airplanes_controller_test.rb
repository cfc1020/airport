require 'test_helper'

class AirplanesControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
  end

  test "should get transfer_state" do
    get :transfer_state
    assert_response :success
  end

end
