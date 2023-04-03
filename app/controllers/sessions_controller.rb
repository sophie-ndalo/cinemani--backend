class SessionsController < ApplicationController
    def create
      user = User.find_by(email: params[:email])
    
      if user && user.authenticate(params[:password])
        session[:user_id] ||= user.id
        session[:session_id] = request.session_options[:id]
        render json: { success: true, message: "Logged in successfully." }
      else
        render json: { success: false, errors: ["Invalid email or password."] }, status: :unprocessable_entity
      end
    end
  
    def destroy
      session[:user_id] = nil
      byebug
      cookies.delete(:user_id)
      head :no_content
    end
  
    private
  
    def session_params
      params.permit(:email, :password)
    end
  end