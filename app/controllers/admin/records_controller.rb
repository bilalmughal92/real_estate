class Admin::RecordsController < Admin::BaseController
  layout "admin"

  def index
    @records = Record.all
  end

  def new
    if current_user.present?
      @record = Record.new
    else
      flash[:notice] = "You are not authorized."
      redirect_to "/admin/records"
    end
  end

  def create
    @record = Record.create(record_params)
    redirect_to '/admin/records'
  end

  def edit
    @record = Record.find(params[:id])
  end

  def update
    @record = Record.find(params[:id])
    @record.update(record_params)
    redirect_to '/admin/records'
  end

  def destroy
    @record = Record.find(params[:id])
    @record.destroy
    redirect_to '/admin/records'
  end

  private

  def record_params
    params.require(:record).permit!
  end
end
