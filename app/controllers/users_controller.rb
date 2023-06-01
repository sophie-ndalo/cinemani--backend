class UsersController < ApplicationController
  before_action :authenticate_user, except: :create
  def index
    @users = User.all
    render json: @users
  end

  def create
    user = User.create!(
      email: params[:email],
      name: params[:name],
      username: params[:username],
      avatar: params[:avatar],
      password: params[:password],
      password_confirmation: params[:password_confirmation]
    )
    render json: user, status: :created
  end
  
  
  
  def show
    @user = User.find_by(id: session[:user_id])
    render json: @user
  end

  def destroy
    session.delete(:user_id)
    render json: { message: "Logged out successfully" }
  end

  private

  private
  def user_params
    params.require(:user).permit(:username, :name, :password, :password_confirmation, :email, :avatar)
  end
end

