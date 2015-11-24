require 'test_helper'

class TopicsControllerTest < ActionController::TestCase
  setup do
    @topic = topics(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:topics)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create topic" do
    assert_difference('Topic.count') do
      post :create, topic: { end_date: @topic.end_date, name: @topic.name, start_date: @topic.start_date, level1_topic_group_id: @topic.level1_topic_group_id, level2_topic_group_id: @topic.level2_topic_group_id, type_id: @topic.type_id }
    end

    assert_redirected_to topic_path(assigns(:topic))
  end

  test "should show topic" do
    get :show, id: @topic
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @topic
    assert_response :success
  end

  test "should update topic" do
    patch :update, id: @topic, topic: { end_date: @topic.end_date, name: @topic.name, start_date: @topic.start_date, level1_topic_group_id: @topic.level1_topic_group_id, level2_topic_group_id: @topic.level2_topic_group_id, type_id: @topic.type_id }
    assert_redirected_to topic_path(assigns(:topic))
  end

  test "should destroy topic" do
    assert_difference('Topic.count', -1) do
      delete :destroy, id: @topic
    end

    assert_redirected_to topics_path
  end
end
