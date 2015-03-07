require 'test_helper'

class TripsControllerTest < ActionController::TestCase
  setup do
    @trip = trips(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:trips)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create trip" do
    assert_difference('Trip.count') do
      post :create, trip: { action: @trip.action, bike_id: @trip.bike_id, customer_id: @trip.customer_id, date_arrived: @trip.date_arrived, date_removed: @trip.date_removed, station_arrived: @trip.station_arrived, station_removed: @trip.station_removed }
    end

    assert_redirected_to trip_path(assigns(:trip))
  end

  test "should show trip" do
    get :show, id: @trip
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @trip
    assert_response :success
  end

  test "should update trip" do
    patch :update, id: @trip, trip: { action: @trip.action, bike_id: @trip.bike_id, customer_id: @trip.customer_id, date_arrived: @trip.date_arrived, date_removed: @trip.date_removed, station_arrived: @trip.station_arrived, station_removed: @trip.station_removed }
    assert_redirected_to trip_path(assigns(:trip))
  end

  test "should destroy trip" do
    assert_difference('Trip.count', -1) do
      delete :destroy, id: @trip
    end

    assert_redirected_to trips_path
  end
end
