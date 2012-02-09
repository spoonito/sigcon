require 'test_helper'

class DiabetesConsultationsControllerTest < ActionController::TestCase
  setup do
    @diabetes_consultation = diabetes_consultations(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:diabetes_consultations)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create diabetes_consultation" do
    assert_difference('DiabetesConsultation.count') do
      post :create, :diabetes_consultation => @diabetes_consultation.attributes
    end

    assert_redirected_to diabetes_consultation_path(assigns(:diabetes_consultation))
  end

  test "should show diabetes_consultation" do
    get :show, :id => @diabetes_consultation.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @diabetes_consultation.to_param
    assert_response :success
  end

  test "should update diabetes_consultation" do
    put :update, :id => @diabetes_consultation.to_param, :diabetes_consultation => @diabetes_consultation.attributes
    assert_redirected_to diabetes_consultation_path(assigns(:diabetes_consultation))
  end

  test "should destroy diabetes_consultation" do
    assert_difference('DiabetesConsultation.count', -1) do
      delete :destroy, :id => @diabetes_consultation.to_param
    end

    assert_redirected_to diabetes_consultations_path
  end
end
