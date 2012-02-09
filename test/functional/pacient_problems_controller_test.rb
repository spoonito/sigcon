require 'test_helper'

class PacientProblemsControllerTest < ActionController::TestCase
  setup do
    @pacient_problem = pacient_problems(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:pacient_problems)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create pacient_problem" do
    assert_difference('PacientProblem.count') do
      post :create, :pacient_problem => @pacient_problem.attributes
    end

    assert_redirected_to pacient_problem_path(assigns(:pacient_problem))
  end

  test "should show pacient_problem" do
    get :show, :id => @pacient_problem.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @pacient_problem.to_param
    assert_response :success
  end

  test "should update pacient_problem" do
    put :update, :id => @pacient_problem.to_param, :pacient_problem => @pacient_problem.attributes
    assert_redirected_to pacient_problem_path(assigns(:pacient_problem))
  end

  test "should destroy pacient_problem" do
    assert_difference('PacientProblem.count', -1) do
      delete :destroy, :id => @pacient_problem.to_param
    end

    assert_redirected_to pacient_problems_path
  end
end
