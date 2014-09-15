require 'test_helper'

class TimeGettersControllerTest < ActionController::TestCase
  setup do
    @time_getter = time_getters(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:time_getters)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create time_getter" do
    assert_difference('TimeGetter.count') do
      post :create, time_getter: { datetime: @time_getter.datetime, html: @time_getter.html }
    end

    assert_redirected_to time_getter_path(assigns(:time_getter))
  end

  test "should show time_getter" do
    get :show, id: @time_getter
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @time_getter
    assert_response :success
  end

  test "should update time_getter" do
    patch :update, id: @time_getter, time_getter: { datetime: @time_getter.datetime, html: @time_getter.html }
    assert_redirected_to time_getter_path(assigns(:time_getter))
  end

  test "should destroy time_getter" do
    assert_difference('TimeGetter.count', -1) do
      delete :destroy, id: @time_getter
    end

    assert_redirected_to time_getters_path
  end
end
