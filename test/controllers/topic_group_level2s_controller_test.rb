require 'test_helper'

class TopicGroupLevel2sControllerTest < ActionController::TestCase
  setup do
    @level2_topic_group = level2_topic_groups(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:level2_topic_groups)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create level2_topic_group" do
    assert_difference('TopicGroupLevel2.count') do
      post :create, level2_topic_group: { end_year: @level2_topic_group.end_year, name: @level2_topic_group.name, start_year: @level2_topic_group.start_year, level1_topic_group_id: @level2_topic_group.level1_topic_group_id }
    end

    assert_redirected_to level2_topic_group_path(assigns(:level2_topic_group))
  end

  test "should show level2_topic_group" do
    get :show, id: @level2_topic_group
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @level2_topic_group
    assert_response :success
  end

  test "should update level2_topic_group" do
    patch :update, id: @level2_topic_group, level2_topic_group: { end_year: @level2_topic_group.end_year, name: @level2_topic_group.name, start_year: @level2_topic_group.start_year, level1_topic_group_id: @level2_topic_group.level1_topic_group_id }
    assert_redirected_to level2_topic_group_path(assigns(:level2_topic_group))
  end

  test "should destroy level2_topic_group" do
    assert_difference('TopicGroupLevel2.count', -1) do
      delete :destroy, id: @level2_topic_group
    end

    assert_redirected_to level2_topic_groups_path
  end
end
