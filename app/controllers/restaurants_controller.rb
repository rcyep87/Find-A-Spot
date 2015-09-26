class RestaurantsController < ApplicationController

  def index #displays all restaurants
    # restaurants = Restaurant.all
    # render json: restaurants.to_json, status: 200
    restaurants = Restaurant.all
    render json: restaurants.to_json(:include => :spots), status: 200
  end

  def show #displays a specific restaurant
    if Restaurant.exists?(params[:id])
      restaurant = Restaurant.find(params[:id])
      render json: restaurant.to_json, status: 200
    else
      render json: { error_msg: "There is no restaurant here!", id: params[:id] }.to_json, status: 404
    end
  end

end
