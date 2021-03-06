class SpotsController < ApplicationController

  def index #displays all the parking spots
   spots = Spot.all
   render json: spots.to_json, status: 200
    # spots = Spot.all
    #
    # renamed_spots = spots.map do |spot|
    #   {
    #     id: spot.id,
    #     rest_name: Restaurant.find(spot.restaurant_id).name,
    #     available: spot.available,
    #     user_id: spot.user_id
    #   }
    # end
    # render json: renamed_spots, status: 200
  end

  def show
    if Spot.exists?(params[:id])
      one_spot = Spot.find(params[:id])

      # manipulated_spot = one_spot.map do |spot|
      # {
      #   id:        spot.id,
      #   rest_name: Restaurant.find(spot.restaurant_id),
      #   available: spot.available,
      #   user_id:   spot.user_id
      # }
      # end

      render json: one_spot, status: 200
    else
      render json: { error_msg: "This spot does not exist in the database!", id: params[:id] }.to_json, status: 404
    end
  end

  def update
    if Spot.exists?(params[:id])
      spot_update = Spot.find(params[:id])
      spot_update.available = params.fetch(:available, spot_update.available)
      spot_update.user_id   = params.fetch(:user_id  , spot_update.user_id) #consider how to do validation of actual user in database
      spot_update.save
      render json: spot_update.to_json, status: 200
    else
      render json: { error_msg: "You're trying to update a parking spot that doesn't exist in the database!", id: params[:id] }, status: 404
    end
  end

end
