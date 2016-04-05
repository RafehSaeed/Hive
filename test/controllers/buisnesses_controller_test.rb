require 'test_helper'

class BuisnessesControllerTest < ActionController::TestCase
  setup do
    @buisness = buisnesses(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:buisnesses)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create buisness" do
    assert_difference('Buisness.count') do
      post :create, buisness: {  }
    end

    assert_redirected_to buisness_path(assigns(:buisness))
  end

  test "should show buisness" do
    get :show, id: @buisness
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @buisness
    assert_response :success
  end

  test "should update buisness" do
    patch :update, id: @buisness, buisness: {  }
    assert_redirected_to buisness_path(assigns(:buisness))
  end

  test "should destroy buisness" do
    assert_difference('Buisness.count', -1) do
      delete :destroy, id: @buisness
    end

    assert_redirected_to buisnesses_path
  end
end
