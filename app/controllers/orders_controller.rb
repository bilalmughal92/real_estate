class OrdersController < ApplicationController
  before_action :check_current_client

  def index
    @orders = current_client.orders
  end

  def place_order
    if current_client.orders.find_by(record_id: params[:id]).blank?
      current_client.orders.create(record_id: params[:id], order_date: Date.today, status: "pending")
    end
    redirect_to orders_path
  end

  def destroy
    @order = Order.find(params[:id])
    @order.destroy
    redirect_to orders_path
  end
end
