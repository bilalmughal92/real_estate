class OrdersController < ApplicationController
  before_action :check_current_client

  def index
    @current_client = current_client
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

  def feedback
    Feedback.create(feedback_params)
    redirect_to orders_path
  end

  def all_feedbacks
    @feedbacks = current_client.feedbacks
  end

  def delete_feedback
    @feedback = Feedback.find(params[:id])
    @feedback.destroy
    redirect_to '/feedback'
  end

  private

  def feedback_params
    params.require(:feedback).permit!
  end
end
