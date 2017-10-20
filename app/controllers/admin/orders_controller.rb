class Admin::OrdersController < Admin::BaseController
  layout "admin"
  
  def index
    @orders = Order.all
  end

  def destroy
    @order = Order.find(params[:id])
    @order.destroy
    redirect_to admin_orders_path
  end
end
