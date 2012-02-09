require 'test_helper'

class PediatricConsultationsControllerTest < ActionController::TestCase
  setup do
    @pediatric_consultation = pediatric_consultations(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:pediatric_consultations)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create pediatric_consultation" do
    assert_difference('PediatricConsultation.count') do
      post :create, :pediatric_consultation => @pediatric_consultation.attributes
    end

    assert_redirected_to pediatric_consultation_path(assigns(:pediatric_consultation))
  end

  test "should show pediatric_consultation" do
    get :show, :id => @pediatric_consultation.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @pediatric_consultation.to_param
    assert_response :success
  end

  test "should update pediatric_consultation" do
    put :update, :id => @pediatric_consultation.to_param, :pediatric_consultation => @pediatric_consultation.attributes
    assert_redirected_to pediatric_consultation_path(assigns(:pediatric_consultation))
  end

  test "should destroy pediatric_consultation" do
    assert_difference('PediatricConsultation.count', -1) do
      delete :destroy, :id => @pediatric_consultation.to_param
    end

    assert_redirected_to pediatric_consultations_path
  end
end
