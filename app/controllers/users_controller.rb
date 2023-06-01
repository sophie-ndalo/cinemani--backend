class UsersController < ApplicationController
  def index
    @users = User.all
    render json: @users
  end

  def create
    @user = User.create(user_params)
    if @user.valid?
      render json: { user: UserSerializer.new(@user) }, status: :created
    else
      render json: { error: 'failed to create user' }, status: :unprocessable_entity
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

  private
  def user_params
    params.require(:user).permit(:username, :name, :password, :password_confirmation, :email, :avatar)
  end
end

