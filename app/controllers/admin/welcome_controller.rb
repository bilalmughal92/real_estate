class Admin::WelcomeController < Admin::BaseController
	layout :authentication

  def index
    if current_user.present?
      redirect_to '/admin/records'
    end
  end

  private

  def authentication
    if action_name == "index"
      'authentication'
    else
      "admin"
    end
  end

end
