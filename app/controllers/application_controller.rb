class ApplicationController < ActionController::Base
    include Pagy::Backend
    include Pagy::Frontend

    
    helper_method :current_user, :logged_in?

    def current_user
        @current_user ||= User.find(session[:user_id]) if session[:user_id]
    end
    
    
    def logged_in?
        !!current_user
    end
 
end
