class OrderItemsController < ApplicationController
  skip_before_action :authenticate_user!
  before_action :set_order

  def create
    @order_item = @cart.order_items.new(order_params)
    @cart.save
    session[:cart_id] = @cart.id
  end

  def update
    @order_item = @cart.order_items.find(params[:id])
    @order_item.update_attributes(order_params)
    @order_items = current_order.order_items
  end

  def destroy
    @cart_item = @cart.order_items.find(params[:id])
    @order_item.destroy
    @order_items = current_order.order_items
  end

  private

  def order_params
    params.require(:order_item).permit(:quantity)
  end

  def set_order
    @cart = current_order
  end
end
