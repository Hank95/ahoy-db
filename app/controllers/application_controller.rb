class ApplicationController < ActionController::Base
    include ActionController::Cookies
    before_action :authorize
    skip_before_action :verify_authenticity_token
    
    def authorize
      @current_user = User.find_by(id: session[:user_id])
      # byebug
      render json: {error:["Not authorized"]}, status: :unauthorized unless @current_user
    end
    
end
