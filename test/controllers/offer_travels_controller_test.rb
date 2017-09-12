require 'test_helper'

class OfferTravelsControllerTest < ActionController::TestCase
  setup do
    @offer_travel = offer_travels(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:offer_travels)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create offer_travel" do
    assert_difference('OfferTravel.count') do
      post :create, offer_travel: { coordenada_end: @offer_travel.coordenada_end, coordenada_start: @offer_travel.coordenada_start, name_end: @offer_travel.name_end, name_start: @offer_travel.name_start, state: @offer_travel.state, user_id: @offer_travel.user_id, vechicle_id: @offer_travel.vechicle_id }
    end

    assert_redirected_to offer_travel_path(assigns(:offer_travel))
  end

  test "should show offer_travel" do
    get :show, id: @offer_travel
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @offer_travel
    assert_response :success
  end

  test "should update offer_travel" do
    patch :update, id: @offer_travel, offer_travel: { coordenada_end: @offer_travel.coordenada_end, coordenada_start: @offer_travel.coordenada_start, name_end: @offer_travel.name_end, name_start: @offer_travel.name_start, state: @offer_travel.state, user_id: @offer_travel.user_id, vechicle_id: @offer_travel.vechicle_id }
    assert_redirected_to offer_travel_path(assigns(:offer_travel))
  end

  test "should destroy offer_travel" do
    assert_difference('OfferTravel.count', -1) do
      delete :destroy, id: @offer_travel
    end

    assert_redirected_to offer_travels_path
  end
end
