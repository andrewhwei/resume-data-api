require 'test_helper'

class Api::V1::EducationsControllerTest < ActionController::TestCase
  setup do
    @api_v1_education = api_v1_educations(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:api_v1_educations)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create api_v1_education" do
    assert_difference('Api::V1::Education.count') do
      post :create, api_v1_education: {  }
    end

    assert_redirected_to api_v1_education_path(assigns(:api_v1_education))
  end

  test "should show api_v1_education" do
    get :show, id: @api_v1_education
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @api_v1_education
    assert_response :success
  end

  test "should update api_v1_education" do
    patch :update, id: @api_v1_education, api_v1_education: {  }
    assert_redirected_to api_v1_education_path(assigns(:api_v1_education))
  end

  test "should destroy api_v1_education" do
    assert_difference('Api::V1::Education.count', -1) do
      delete :destroy, id: @api_v1_education
    end

    assert_redirected_to api_v1_educations_path
  end
end
