require "test_helper"

class Lr9cControllerTest < ActionDispatch::IntegrationTest
  test "should get input" do
    get lr9c_input_url
    assert_response :success
  end

  test "should get view" do
    get lr9c_view_url
    assert_response :success
  end
end
