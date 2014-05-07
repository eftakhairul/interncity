require 'test_helper'

class InternsControllerTest < ActionController::TestCase
  setup do
    @intern = interns(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:interns)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create intern" do
    assert_difference('Intern.count') do
      post :create, intern: {  }
    end

    assert_redirected_to intern_path(assigns(:intern))
  end

  test "should show intern" do
    get :show, id: @intern
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @intern
    assert_response :success
  end

  test "should update intern" do
    put :update, id: @intern, intern: {  }
    assert_redirected_to intern_path(assigns(:intern))
  end

  test "should destroy intern" do
    assert_difference('Intern.count', -1) do
      delete :destroy, id: @intern
    end

    assert_redirected_to interns_path
  end
end
