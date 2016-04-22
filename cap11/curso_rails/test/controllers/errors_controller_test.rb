require 'test_helper'

class ErrorsControllerTest < ActionController::TestCase
  test "should get route" do
    get :route
    assert_response :success
  end

end
