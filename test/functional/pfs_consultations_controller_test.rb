require 'test_helper'

class PfsConsultationsControllerTest < ActionController::TestCase
  setup do
    @pfs_consultation = pfs_consultations(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:pfs_consultations)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create pfs_consultation" do
    assert_difference('PfsConsultation.count') do
      post :create, :pfs_consultation => @pfs_consultation.attributes
    end

    assert_redirected_to pfs_consultation_path(assigns(:pfs_consultation))
  end

  test "should show pfs_consultation" do
    get :show, :id => @pfs_consultation.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @pfs_consultation.to_param
    assert_response :success
  end

  test "should update pfs_consultation" do
    put :update, :id => @pfs_consultation.to_param, :pfs_consultation => @pfs_consultation.attributes
    assert_redirected_to pfs_consultation_path(assigns(:pfs_consultation))
  end

  test "should destroy pfs_consultation" do
    assert_difference('PfsConsultation.count', -1) do
      delete :destroy, :id => @pfs_consultation.to_param
    end

    assert_redirected_to pfs_consultations_path
  end
end
