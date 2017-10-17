class Admin::OrdersController < Admin::BaseController
  layout "admin"
  
  def index
    @orders = Order.all
  end
end
