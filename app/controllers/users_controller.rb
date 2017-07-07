class UsersController < ApplicationController

  def login
    byebug
  end

  def signup
    if AdminUserDetail.create(signup_params)
      flash[:success] = "Successfully Register."
    else
      flash[:error] = "Cannot Signup Admin User."
    end
    redirect_to '/'
  end

  private

  def signup_params
    params.require(:admin_user_detail).permit!
  end

end
