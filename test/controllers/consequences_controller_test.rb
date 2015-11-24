require 'test_helper'

class ConsequencesControllerTest < ActionController::TestCase
  setup do
    @consequence = consequences(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:consequences)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create consequence" do
    assert_difference('Consequence.count') do
      post :create, consequence: { text: @consequence.text, topic_id: @consequence.topic_id }
    end

    assert_redirected_to consequence_path(assigns(:consequence))
  end

  test "should show consequence" do
    get :show, id: @consequence
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @consequence
    assert_response :success
  end

  test "should update consequence" do
    patch :update, id: @consequence, consequence: { text: @consequence.text, topic_id: @consequence.topic_id }
    assert_redirected_to consequence_path(assigns(:consequence))
  end

  test "should destroy consequence" do
    assert_difference('Consequence.count', -1) do
      delete :destroy, id: @consequence
    end

    assert_redirected_to consequences_path
  end
end
