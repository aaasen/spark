class ApplicationController < ActionController::Base
  helper_method :current_user

  def require_login
    unless logged_in?
      redirect_to connect_path( :identity_provider => :dailycred)
    end
  end

  def logged_in?
    !!current_user
  end

  private

  # helper method for getting the current signed in user
  def current_user
    begin
      @current_user || User.find(session[:user_id]) if session[:user_id]
    rescue
      nil
    end
  end
  protect_from_forgery
end
