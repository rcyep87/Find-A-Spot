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

  def create
    if User.exists?(params[:email])
      render json: { error_msg: "User with email: #{params[:email]} already exists!" }, status: 404
    else
      new_user = User.new(first_name: params[:first_name], last_name: params[:last_name], email: params[:email],
                          password: params[:password], profile: params[:profile])
      new_user.save!
      render json: new_user.to_json, status: 200
    end
  end


end
