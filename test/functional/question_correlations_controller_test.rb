require 'test_helper'

class QuestionCorrelationsControllerTest < ActionController::TestCase
  setup do
    @question_correlation = question_correlations(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:question_correlations)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create question_correlation" do
    assert_difference('QuestionCorrelation.count') do
      post :create, :question_correlation => @question_correlation.attributes
    end

    assert_redirected_to question_correlation_path(assigns(:question_correlation))
  end

  test "should show question_correlation" do
    get :show, :id => @question_correlation.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @question_correlation.to_param
    assert_response :success
  end

  test "should update question_correlation" do
    put :update, :id => @question_correlation.to_param, :question_correlation => @question_correlation.attributes
    assert_redirected_to question_correlation_path(assigns(:question_correlation))
  end

  test "should destroy question_correlation" do
    assert_difference('QuestionCorrelation.count', -1) do
      delete :destroy, :id => @question_correlation.to_param
    end

    assert_redirected_to question_correlations_path
  end
end
