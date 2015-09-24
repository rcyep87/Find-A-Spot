class RestaurantsController < ApplicationController

  def index
    restaurants = Restaurant.all
    render json: restaurants.to_json, status: 200
  end

end
