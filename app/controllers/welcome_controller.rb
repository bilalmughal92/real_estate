class WelcomeController < ApplicationController
	layout 'authentication'

  def index
    if current_user.present?
      redirect_to '/records'
    end
  end

end
