class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  helper_method :current_user #make method available in all views
  def current_user  #available in all controllers
  	User.where(id: session["user_id"]).first
  end
end
