class UsersController < ApplicationController
  def index
    @users = User.all
    render json: @users
  end

  def create
    @user = User.new(user_params)
  
    if @user.save
      session[:user_id] = @user.id
      render json: { message: "User was successfully created." }
    else
      render json: { error: @user.errors.full_messages }, status: :unprocessable_entity
    end
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

  def user_params
    params.permit(:name, :email, :password)
  end
end

