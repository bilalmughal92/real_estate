class ApplicationController < ActionController::Base
  # protect_from_forgery with: :exception

  def current_client
    Client.find_by(email: session[:client_user_email]) if session[:client_user_email].present?
  end

  def check_current_client
    redirect_to root_path if current_client.blank?
  end

end
