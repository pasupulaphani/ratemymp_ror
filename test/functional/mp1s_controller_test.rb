require 'test_helper'

class Mp1sControllerTest < ActionController::TestCase
  setup do
    @mp1 = mp1s(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:mp1s)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create mp1" do
    assert_difference('Mp1.count') do
      post :create, mp1: { rating1: @mp1.rating1, rating2: @mp1.rating2, rating3: @mp1.rating3, rating4: @mp1.rating4, twfy_mpid: @mp1.twfy_mpid }
    end

    assert_redirected_to mp1_path(assigns(:mp1))
  end

  test "should show mp1" do
    get :show, id: @mp1
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @mp1
    assert_response :success
  end

  test "should update mp1" do
    put :update, id: @mp1, mp1: { rating1: @mp1.rating1, rating2: @mp1.rating2, rating3: @mp1.rating3, rating4: @mp1.rating4, twfy_mpid: @mp1.twfy_mpid }
    assert_redirected_to mp1_path(assigns(:mp1))
  end

  test "should destroy mp1" do
    assert_difference('Mp1.count', -1) do
      delete :destroy, id: @mp1
    end

    assert_redirected_to mp1s_path
  end
end
