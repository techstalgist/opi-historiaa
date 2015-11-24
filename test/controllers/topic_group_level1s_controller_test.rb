require 'test_helper'

class TopicGroupLevel1sControllerTest < ActionController::TestCase
  setup do
    @level1_topic_group = level1_topic_groups(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:level1_topic_groups)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create level1_topic_group" do
    assert_difference('TopicGroupLevel1.count') do
      post :create, level1_topic_group: { end_year: @level1_topic_group.end_year, era_id: @level1_topic_group.era_id, name: @level1_topic_group.name, start_year: @level1_topic_group.start_year }
    end

    assert_redirected_to level1_topic_group_path(assigns(:level1_topic_group))
  end

  test "should show level1_topic_group" do
    get :show, id: @level1_topic_group
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @level1_topic_group
    assert_response :success
  end

  test "should update level1_topic_group" do
    patch :update, id: @level1_topic_group, level1_topic_group: { end_year: @level1_topic_group.end_year, era_id: @level1_topic_group.era_id, name: @level1_topic_group.name, start_year: @level1_topic_group.start_year }
    assert_redirected_to level1_topic_group_path(assigns(:level1_topic_group))
  end

  test "should destroy level1_topic_group" do
    assert_difference('TopicGroupLevel1.count', -1) do
      delete :destroy, id: @level1_topic_group
    end

    assert_redirected_to level1_topic_groups_path
  end
end
