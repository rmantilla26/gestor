require 'test_helper'

class ProjectEmployeesControllerTest < ActionController::TestCase
  setup do
    @project_employee = project_employees(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:project_employees)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create project_employee" do
    assert_difference('ProjectEmployee.count') do
      post :create, project_employee: { employee_id: @project_employee.employee_id, project_id: @project_employee.project_id, role_id: @project_employee.role_id }
    end

    assert_redirected_to project_employee_path(assigns(:project_employee))
  end

  test "should show project_employee" do
    get :show, id: @project_employee
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @project_employee
    assert_response :success
  end

  test "should update project_employee" do
    patch :update, id: @project_employee, project_employee: { employee_id: @project_employee.employee_id, project_id: @project_employee.project_id, role_id: @project_employee.role_id }
    assert_redirected_to project_employee_path(assigns(:project_employee))
  end

  test "should destroy project_employee" do
    assert_difference('ProjectEmployee.count', -1) do
      delete :destroy, id: @project_employee
    end

    assert_redirected_to project_employees_path
  end
end
