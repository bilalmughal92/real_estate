class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  before_action :check_current_user

  def current_user
    AdminUserDetail.find_by(email: session[:current_user_email])
  end

  def check_current_user
    # byebug
    if current_user.present?
    else
    end
  end
end
