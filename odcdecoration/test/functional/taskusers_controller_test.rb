require 'test_helper'

class TaskusersControllerTest < ActionController::TestCase
  setup do
    @taskuser = taskusers(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:taskusers)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create taskuser" do
    assert_difference('Taskuser.count') do
      post :create, taskuser: @taskuser.attributes
    end

    assert_redirected_to taskuser_path(assigns(:taskuser))
  end

  test "should show taskuser" do
    get :show, id: @taskuser
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @taskuser
    assert_response :success
  end

  test "should update taskuser" do
    put :update, id: @taskuser, taskuser: @taskuser.attributes
    assert_redirected_to taskuser_path(assigns(:taskuser))
  end

  test "should destroy taskuser" do
    assert_difference('Taskuser.count', -1) do
      delete :destroy, id: @taskuser
    end

    assert_redirected_to taskusers_path
  end
end
