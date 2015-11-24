require 'test_helper'

class KeyPointsControllerTest < ActionController::TestCase
  setup do
    @key_point = key_points(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:key_points)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create key_point" do
    assert_difference('KeyPoint.count') do
      post :create, key_point: { text: @key_point.text, topic_id: @key_point.topic_id }
    end

    assert_redirected_to key_point_path(assigns(:key_point))
  end

  test "should show key_point" do
    get :show, id: @key_point
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @key_point
    assert_response :success
  end

  test "should update key_point" do
    patch :update, id: @key_point, key_point: { text: @key_point.text, topic_id: @key_point.topic_id }
    assert_redirected_to key_point_path(assigns(:key_point))
  end

  test "should destroy key_point" do
    assert_difference('KeyPoint.count', -1) do
      delete :destroy, id: @key_point
    end

    assert_redirected_to key_points_path
  end
end
