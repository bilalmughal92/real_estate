class RecordsController < ApplicationController
  before_action :check_current_user, only: [:signup, :sign_out]

  def index
    
  end
end
