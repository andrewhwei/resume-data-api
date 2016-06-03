require 'test_helper'

class Api::V1::CapstonesControllerTest < ActionController::TestCase
  setup do
    @api_v1_capstone = api_v1_capstones(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:api_v1_capstones)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create api_v1_capstone" do
    assert_difference('Api::V1::Capstone.count') do
      post :create, api_v1_capstone: {  }
    end

    assert_redirected_to api_v1_capstone_path(assigns(:api_v1_capstone))
  end

  test "should show api_v1_capstone" do
    get :show, id: @api_v1_capstone
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @api_v1_capstone
    assert_response :success
  end

  test "should update api_v1_capstone" do
    patch :update, id: @api_v1_capstone, api_v1_capstone: {  }
    assert_redirected_to api_v1_capstone_path(assigns(:api_v1_capstone))
  end

  test "should destroy api_v1_capstone" do
    assert_difference('Api::V1::Capstone.count', -1) do
      delete :destroy, id: @api_v1_capstone
    end

    assert_redirected_to api_v1_capstones_path
  end
end
