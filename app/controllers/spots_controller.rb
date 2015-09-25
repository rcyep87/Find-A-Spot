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

  # def update
  #   spot_update = Spot.find(params[:restaurant_id])
  #   spot_update.
  # end

end
