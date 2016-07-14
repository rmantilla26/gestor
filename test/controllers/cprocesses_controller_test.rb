require 'test_helper'

class CprocessesControllerTest < ActionController::TestCase
  setup do
    @cprocess = cprocesses(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:cprocesses)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create cprocess" do
    assert_difference('Cprocess.count') do
      post :create, cprocess: { abbreviation: @cprocess.abbreviation, area_id: @cprocess.area_id, name: @cprocess.name, purpose: @cprocess.purpose }
    end

    assert_redirected_to cprocess_path(assigns(:cprocess))
  end

  test "should show cprocess" do
    get :show, id: @cprocess
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @cprocess
    assert_response :success
  end

  test "should update cprocess" do
    patch :update, id: @cprocess, cprocess: { abbreviation: @cprocess.abbreviation, area_id: @cprocess.area_id, name: @cprocess.name, purpose: @cprocess.purpose }
    assert_redirected_to cprocess_path(assigns(:cprocess))
  end

  test "should destroy cprocess" do
    assert_difference('Cprocess.count', -1) do
      delete :destroy, id: @cprocess
    end

    assert_redirected_to cprocesses_path
  end
end
