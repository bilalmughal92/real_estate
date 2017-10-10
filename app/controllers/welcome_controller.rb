class WelcomeController < ApplicationController
	layout :authentication

  def index
    if current_client.present?
      redirect_to '/properties'
    end
  end

  def about_us
    
  end

  def contact_us
    
  end

  private

  def authentication
    if action_name == "index"
      'authentication'
    else
      "application"
    end
  end

end
