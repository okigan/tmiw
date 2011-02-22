require 'test_helper'

class AnswerVariantsControllerTest < ActionController::TestCase
  setup do
    @answer_variant = answer_variants(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:answer_variants)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create answer_variant" do
    assert_difference('AnswerVariant.count') do
      post :create, :answer_variant => @answer_variant.attributes
    end

    assert_redirected_to answer_variant_path(assigns(:answer_variant))
  end

  test "should show answer_variant" do
    get :show, :id => @answer_variant.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @answer_variant.to_param
    assert_response :success
  end

  test "should update answer_variant" do
    put :update, :id => @answer_variant.to_param, :answer_variant => @answer_variant.attributes
    assert_redirected_to answer_variant_path(assigns(:answer_variant))
  end

  test "should destroy answer_variant" do
    assert_difference('AnswerVariant.count', -1) do
      delete :destroy, :id => @answer_variant.to_param
    end

    assert_redirected_to answer_variants_path
  end
end
