class Admin::BaseController < ApplicationController
	def current_user
    AdminUserDetail.find_by(email: session[:current_user_email])
  end

  def redirect_user
    
  end
end
