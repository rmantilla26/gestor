require 'test_helper'

class AuditProcessActivitiesControllerTest < ActionController::TestCase
  setup do
    @audit_process_activity = audit_process_activities(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:audit_process_activities)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create audit_process_activity" do
    assert_difference('AuditProcessActivity.count') do
      post :create, audit_process_activity: { activity_id: @audit_process_activity.activity_id, audit_id: @audit_process_activity.audit_id, cprocess_id: @audit_process_activity.cprocess_id }
    end

    assert_redirected_to audit_process_activity_path(assigns(:audit_process_activity))
  end

  test "should show audit_process_activity" do
    get :show, id: @audit_process_activity
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @audit_process_activity
    assert_response :success
  end

  test "should update audit_process_activity" do
    patch :update, id: @audit_process_activity, audit_process_activity: { activity_id: @audit_process_activity.activity_id, audit_id: @audit_process_activity.audit_id, cprocess_id: @audit_process_activity.cprocess_id }
    assert_redirected_to audit_process_activity_path(assigns(:audit_process_activity))
  end

  test "should destroy audit_process_activity" do
    assert_difference('AuditProcessActivity.count', -1) do
      delete :destroy, id: @audit_process_activity
    end

    assert_redirected_to audit_process_activities_path
  end
end
