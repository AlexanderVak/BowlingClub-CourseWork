require "test_helper"

class StaffControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get staff_new_url
    assert_response :success
  end

  test "should get create" do
    get staff_create_url
    assert_response :success
  end
end
