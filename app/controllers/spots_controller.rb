class SpotsController < ApplicationController
  def index
    spots = Restaurant.find(params[:restaurant_id]).spots
    render json: spots.to_json, status: 200
  end
end
