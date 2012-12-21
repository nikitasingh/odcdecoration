require 'test_helper'

class DecorationsControllerTest < ActionController::TestCase
  setup do
    @decoration = decorations(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:decorations)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create decoration" do
    assert_difference('Decoration.count') do
      post :create, decoration: @decoration.attributes
    end

    assert_redirected_to decoration_path(assigns(:decoration))
  end

  test "should show decoration" do
    get :show, id: @decoration
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @decoration
    assert_response :success
  end

  test "should update decoration" do
    put :update, id: @decoration, decoration: @decoration.attributes
    assert_redirected_to decoration_path(assigns(:decoration))
  end

  test "should destroy decoration" do
    assert_difference('Decoration.count', -1) do
      delete :destroy, id: @decoration
    end

    assert_redirected_to decorations_path
  end
end
