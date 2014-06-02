require 'test_helper'

class AperosControllerTest < ActionController::TestCase
  setup do
    @apero = aperos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:aperos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create apero" do
    assert_difference('Apero.count') do
      post :create, apero: { category: @apero.category, content: @apero.content, date: @apero.date, hour: @apero.hour, name: @apero.name, user: @apero.user, visibility: @apero.visibility }
    end

    assert_redirected_to apero_path(assigns(:apero))
  end

  test "should show apero" do
    get :show, id: @apero
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @apero
    assert_response :success
  end

  test "should update apero" do
    put :update, id: @apero, apero: { category: @apero.category, content: @apero.content, date: @apero.date, hour: @apero.hour, name: @apero.name, user: @apero.user, visibility: @apero.visibility }
    assert_redirected_to apero_path(assigns(:apero))
  end

  test "should destroy apero" do
    assert_difference('Apero.count', -1) do
      delete :destroy, id: @apero
    end

    assert_redirected_to aperos_path
  end
end
