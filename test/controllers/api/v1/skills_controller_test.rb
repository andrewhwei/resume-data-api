require 'test_helper'

class Api::V1::SkillsControllerTest < ActionController::TestCase
  setup do
    @api_v1_skill = api_v1_skills(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:api_v1_skills)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create api_v1_skill" do
    assert_difference('Api::V1::Skill.count') do
      post :create, api_v1_skill: {  }
    end

    assert_redirected_to api_v1_skill_path(assigns(:api_v1_skill))
  end

  test "should show api_v1_skill" do
    get :show, id: @api_v1_skill
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @api_v1_skill
    assert_response :success
  end

  test "should update api_v1_skill" do
    patch :update, id: @api_v1_skill, api_v1_skill: {  }
    assert_redirected_to api_v1_skill_path(assigns(:api_v1_skill))
  end

  test "should destroy api_v1_skill" do
    assert_difference('Api::V1::Skill.count', -1) do
      delete :destroy, id: @api_v1_skill
    end

    assert_redirected_to api_v1_skills_path
  end
end
