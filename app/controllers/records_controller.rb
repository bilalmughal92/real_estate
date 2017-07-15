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
    redirect_to '/records'
  end

  def edit
    @record = Record.find(params[:id])
  end

  def update
    @record = Record.find(params[:id])
    @record.update(record_params)
    redirect_to '/records'
  end

  def destroy
    @record = Record.find(params[:id])
    @record.destroy
    redirect_to '/records'
  end

  private

  def record_params
    params.require(:record).permit!
  end
end
