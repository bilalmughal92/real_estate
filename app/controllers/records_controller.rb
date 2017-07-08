class RecordsController < ApplicationController
  before_action :check_current_user, only: [:signup, :sign_out]

  def index
    @records = Record.all
  end

  def show
    @record = Record.find(params[:id])
  end

  def new
    @record = Record.new
  end

  def create
    @record = Record.create(record_params)
    respond_to do |format|
      format.html
      format.js
      format.json
    end
  end

  def edit
    @record = Record.find(params[:id])
  end

  def update
    @record = Record.update(record_params)
    respond_to do |format|
      format.html
      format.js
      format.json
    end
  end

  def destroy
    @record = Record.find(params[:id])
    redirect_to '/records'
  end

  private

  def record_params
    params.require(:record).permit!
  end
end
