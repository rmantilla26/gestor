require 'test_helper'

class AuditProcessesControllerTest < ActionController::TestCase
  setup do
    @audit_process = audit_processes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:audit_processes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create audit_process" do
    assert_difference('AuditProcess.count') do
      post :create, audit_process: { audit_id: @audit_process.audit_id, cprocess_id: @audit_process.cprocess_id }
    end

    assert_redirected_to audit_process_path(assigns(:audit_process))
  end

  test "should show audit_process" do
    get :show, id: @audit_process
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @audit_process
    assert_response :success
  end

  test "should update audit_process" do
    patch :update, id: @audit_process, audit_process: { audit_id: @audit_process.audit_id, cprocess_id: @audit_process.cprocess_id }
    assert_redirected_to audit_process_path(assigns(:audit_process))
  end

  test "should destroy audit_process" do
    assert_difference('AuditProcess.count', -1) do
      delete :destroy, id: @audit_process
    end

    assert_redirected_to audit_processes_path
  end
end
