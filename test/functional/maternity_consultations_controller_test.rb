require 'test_helper'

class MaternityConsultationsControllerTest < ActionController::TestCase
  setup do
    @maternity_consultation = maternity_consultations(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:maternity_consultations)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create maternity_consultation" do
    assert_difference('MaternityConsultation.count') do
      post :create, :maternity_consultation => @maternity_consultation.attributes
    end

    assert_redirected_to maternity_consultation_path(assigns(:maternity_consultation))
  end

  test "should show maternity_consultation" do
    get :show, :id => @maternity_consultation.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @maternity_consultation.to_param
    assert_response :success
  end

  test "should update maternity_consultation" do
    put :update, :id => @maternity_consultation.to_param, :maternity_consultation => @maternity_consultation.attributes
    assert_redirected_to maternity_consultation_path(assigns(:maternity_consultation))
  end

  test "should destroy maternity_consultation" do
    assert_difference('MaternityConsultation.count', -1) do
      delete :destroy, :id => @maternity_consultation.to_param
    end

    assert_redirected_to maternity_consultations_path
  end
end
