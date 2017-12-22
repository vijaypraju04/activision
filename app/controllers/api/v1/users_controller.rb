class Api::V1::UsersController < ApplicationController

  def index
    @users = User.all
    render json: @users.to_json
  end

  def show
    @user = User.find(params[:id])
    render json: @user.to_json
  end

  def create
    @user = User.create(user_params)
    render json: @user.to_json
  end


  private

  def user_params
    params.require(:user).permit(:username, :first_name, :last_name, :password, :address, :picture, :email, :bio, :birth_date)
  end

end
