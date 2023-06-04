require "test_helper"

class ExpControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get exp_index_url
    assert_response :success
  end
end
