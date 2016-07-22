require 'test_helper'

class CprocessActivitiesControllerTest < ActionController::TestCase
  setup do
    @cprocess_activity = cprocess_activities(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:cprocess_activities)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create cprocess_activity" do
    assert_difference('CprocessActivity.count') do
      post :create, cprocess_activity: { activity_id: @cprocess_activity.activity_id, cprocess_id: @cprocess_activity.cprocess_id }
    end

    assert_redirected_to cprocess_activity_path(assigns(:cprocess_activity))
  end

  test "should show cprocess_activity" do
    get :show, id: @cprocess_activity
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @cprocess_activity
    assert_response :success
  end

  test "should update cprocess_activity" do
    patch :update, id: @cprocess_activity, cprocess_activity: { activity_id: @cprocess_activity.activity_id, cprocess_id: @cprocess_activity.cprocess_id }
    assert_redirected_to cprocess_activity_path(assigns(:cprocess_activity))
  end

  test "should destroy cprocess_activity" do
    assert_difference('CprocessActivity.count', -1) do
      delete :destroy, id: @cprocess_activity
    end

    assert_redirected_to cprocess_activities_path
  end
end
