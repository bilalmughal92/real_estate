class UsersController < ApplicationController

  def login
    user = AdminUserDetail.where(email: user_params[:email], password: user_params[:password])
    if user.present?
      session[:current_user_email] = user.first.email
      redirect_to '/records'
    else
      flash[:error] = "Email or password is not correct."
      redirect_to '/'
    end
  end

  def signup
    if AdminUserDetail.create(user_params)
      flash[:success] = "Successfully Register."
    else
      flash[:error] = "Cannot Signup Admin User."
    end
    redirect_to '/'
  end

  def sign_out
    session[:current_user_email] = nil
    redirect_to '/'
  end

  private

  def user_params
    params.require(:admin_user_detail).permit!
  end
end
