class UsersController < ApplicationController
  def index
    users = User.all
    if users.nil?
      render json: { error_msg: "There are no users in the system!" }, status: 404
    else
      users = User.all
      render json: users.to_json, status: 200
    end
  end

  def show
    if User.exists?(params[:id])
      user = User.find(params[:id])
      render json: user.to_json, status: 200
    else
      render json: { error_msg: "This user does not exist!" }, status: 404
    end
  end
end
