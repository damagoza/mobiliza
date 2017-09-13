require 'test_helper'

class TravelsControllerTest < ActionController::TestCase
  setup do
    @travel = travels(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:travels)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create travel" do
    assert_difference('Travel.count') do
      post :create, travel: { calification_demand: @travel.calification_demand, calification_offer: @travel.calification_offer, demand_travel_id: @travel.demand_travel_id, offer_travel_id: @travel.offer_travel_id, state: @travel.state }
    end

    assert_redirected_to travel_path(assigns(:travel))
  end

  test "should show travel" do
    get :show, id: @travel
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @travel
    assert_response :success
  end

  test "should update travel" do
    patch :update, id: @travel, travel: { calification_demand: @travel.calification_demand, calification_offer: @travel.calification_offer, demand_travel_id: @travel.demand_travel_id, offer_travel_id: @travel.offer_travel_id, state: @travel.state }
    assert_redirected_to travel_path(assigns(:travel))
  end

  test "should destroy travel" do
    assert_difference('Travel.count', -1) do
      delete :destroy, id: @travel
    end

    assert_redirected_to travels_path
  end
end
