require "test_helper"

class SaidasControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get saidas_new_url
    assert_response :success
  end

  test "should get create" do
    get saidas_create_url
    assert_response :success
  end
end
