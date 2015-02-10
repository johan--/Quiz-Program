require 'test_helper'

class StudentMcqsControllerTest < ActionController::TestCase
  setup do
    @student_mcq = student_mcqs(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:student_mcqs)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create student_mcq" do
    assert_difference('StudentMcq.count') do
      post :create, student_mcq: {  }
    end

    assert_redirected_to student_mcq_path(assigns(:student_mcq))
  end

  test "should show student_mcq" do
    get :show, id: @student_mcq
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @student_mcq
    assert_response :success
  end

  test "should update student_mcq" do
    patch :update, id: @student_mcq, student_mcq: {  }
    assert_redirected_to student_mcq_path(assigns(:student_mcq))
  end

  test "should destroy student_mcq" do
    assert_difference('StudentMcq.count', -1) do
      delete :destroy, id: @student_mcq
    end

    assert_redirected_to student_mcqs_path
  end
end
