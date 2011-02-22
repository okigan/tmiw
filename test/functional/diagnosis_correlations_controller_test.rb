require 'test_helper'

class DiagnosisCorrelationsControllerTest < ActionController::TestCase
  setup do
    @diagnosis_correlation = diagnosis_correlations(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:diagnosis_correlations)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create diagnosis_correlation" do
    assert_difference('DiagnosisCorrelation.count') do
      post :create, :diagnosis_correlation => @diagnosis_correlation.attributes
    end

    assert_redirected_to diagnosis_correlation_path(assigns(:diagnosis_correlation))
  end

  test "should show diagnosis_correlation" do
    get :show, :id => @diagnosis_correlation.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @diagnosis_correlation.to_param
    assert_response :success
  end

  test "should update diagnosis_correlation" do
    put :update, :id => @diagnosis_correlation.to_param, :diagnosis_correlation => @diagnosis_correlation.attributes
    assert_redirected_to diagnosis_correlation_path(assigns(:diagnosis_correlation))
  end

  test "should destroy diagnosis_correlation" do
    assert_difference('DiagnosisCorrelation.count', -1) do
      delete :destroy, :id => @diagnosis_correlation.to_param
    end

    assert_redirected_to diagnosis_correlations_path
  end
end
