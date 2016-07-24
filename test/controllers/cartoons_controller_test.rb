require 'test_helper'

class CartoonsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @cartoon = cartoons(:one)
  end

  test "should get index" do
    get cartoons_url
    assert_response :success
  end

  test "should get new" do
    get new_cartoon_url
    assert_response :success
  end

  test "should create cartoon" do
    assert_difference('Cartoon.count') do
      post cartoons_url, params: { cartoon: { cartoon_url: @cartoon.cartoon_url, category_id: @cartoon.category_id, rating: @cartoon.rating, views: @cartoon.views } }
    end

    assert_redirected_to cartoon_url(Cartoon.last)
  end

  test "should show cartoon" do
    get cartoon_url(@cartoon)
    assert_response :success
  end

  test "should get edit" do
    get edit_cartoon_url(@cartoon)
    assert_response :success
  end

  test "should update cartoon" do
    patch cartoon_url(@cartoon), params: { cartoon: { cartoon_url: @cartoon.cartoon_url, category_id: @cartoon.category_id, rating: @cartoon.rating, views: @cartoon.views } }
    assert_redirected_to cartoon_url(@cartoon)
  end

  test "should destroy cartoon" do
    assert_difference('Cartoon.count', -1) do
      delete cartoon_url(@cartoon)
    end

    assert_redirected_to cartoons_url
  end
end
