require 'test_helper'

class Api::V1::ExperiencesControllerTest < ActionController::TestCase
  setup do
    @api_v1_experience = api_v1_experiences(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:api_v1_experiences)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create api_v1_experience" do
    assert_difference('Api::V1::Experience.count') do
      post :create, api_v1_experience: {  }
    end

    assert_redirected_to api_v1_experience_path(assigns(:api_v1_experience))
  end

  test "should show api_v1_experience" do
    get :show, id: @api_v1_experience
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @api_v1_experience
    assert_response :success
  end

  test "should update api_v1_experience" do
    patch :update, id: @api_v1_experience, api_v1_experience: {  }
    assert_redirected_to api_v1_experience_path(assigns(:api_v1_experience))
  end

  test "should destroy api_v1_experience" do
    assert_difference('Api::V1::Experience.count', -1) do
      delete :destroy, id: @api_v1_experience
    end

    assert_redirected_to api_v1_experiences_path
  end
end
