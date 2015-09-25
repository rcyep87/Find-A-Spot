class SpotsController < ApplicationController

  def index #displays all the parking spots belonging to a specific restaurant
    spots = Restaurant.find(params[:restaurant_id]).spots
    render json: spots.to_json, status: 200
  end
  
end
