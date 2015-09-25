class SpotsController < ApplicationController

  def index #displays all the parking spots belonging to a specific restaurant
    if Restaurant.exists?(params[:restaurant_id])
      spots = Restaurant.find(params[:restaurant_id]).spots
      render json: spots.to_json, status: 200
    else
      render json: { error_msg: "There are no spots here!", id: params[:restaurant_id] }.to_json, status: 404
    end
  end

  def show
    if Spot.exists?(params[:id])
      spot = Spot.find(params[:id])
      render json: spot.to_json, status: 200
    else
      render json: { error_msg: "This spot does not exist in the database!", id: params[:id] }.to_json, status: 404
    end
  end

  def update
    if Spot.exists?(params[:id])
      spot_update = Spot.find(params[:id])
      spot_update.available = params.fetch(:available, spot_update.available)
      spot_update.user_id   = params.fetch(:user_id  , spot_update.user_id)
      render json: spot_update.to_json, status: 200
    else
      render json: { error_msg: "You're trying to update a parking spot that doesn't exist in the database!", id: params[:id] }, status: 404
    end
  end

end
