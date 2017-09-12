require 'test_helper'

class DemandTravelsControllerTest < ActionController::TestCase
  setup do
    @demand_travel = demand_travels(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:demand_travels)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create demand_travel" do
    assert_difference('DemandTravel.count') do
      post :create, demand_travel: { accept: @demand_travel.accept, offer_travel_id: @demand_travel.offer_travel_id, state: @demand_travel.state, user_id: @demand_travel.user_id }
    end

    assert_redirected_to demand_travel_path(assigns(:demand_travel))
  end

  test "should show demand_travel" do
    get :show, id: @demand_travel
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @demand_travel
    assert_response :success
  end

  test "should update demand_travel" do
    patch :update, id: @demand_travel, demand_travel: { accept: @demand_travel.accept, offer_travel_id: @demand_travel.offer_travel_id, state: @demand_travel.state, user_id: @demand_travel.user_id }
    assert_redirected_to demand_travel_path(assigns(:demand_travel))
  end

  test "should destroy demand_travel" do
    assert_difference('DemandTravel.count', -1) do
      delete :destroy, id: @demand_travel
    end

    assert_redirected_to demand_travels_path
  end
end
