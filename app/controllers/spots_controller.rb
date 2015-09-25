class SpotsController < ApplicationController

  def index #displays all the parking spots belonging to a specific restaurant
    if Restaurant.exists?(params[:restaurant_id])
      spots = Restaurant.find(params[:restaurant_id]).spots
      render json: spots.to_json, status: 200
    else
      render json: { error_msg: "There are no spots here!", id: params[:restaurant_id] }.to_json, status: 404
    end
  end

end
