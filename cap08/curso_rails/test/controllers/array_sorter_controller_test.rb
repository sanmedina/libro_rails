require 'test_helper'

class ArraySorterControllerTest < ActionController::TestCase
  test "should get list" do
    get :list
    assert_response :success
  end

  test "should get sort" do
    get :sort
    assert_response :success
  end

end
