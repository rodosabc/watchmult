require 'test_helper'

class RatingsControllerTest < ActionDispatch::IntegrationTest
  test "should get edit" do
    get ratings_edit_url
    assert_response :success
  end

  test "should get update" do
    get ratings_update_url
    assert_response :success
  end

end
