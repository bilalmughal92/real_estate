class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  def current_user
    AdminUserDetail.find_by(email: session[:current_user_email])
  end
end
