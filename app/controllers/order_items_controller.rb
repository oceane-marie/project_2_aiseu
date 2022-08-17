class OrderItemsController < ApplicationController
  skip_before_action :authenticate_user!

  def create
    @item = Item.find(params[:item_id])
    @order_item = OrderItem.new(order_params)
    @order_item.user_id = current_user.id
    # tip: if save doens't work use .save! to show where is the pb !!
    if user_signed_in?
      @order_item.save!
      redirect_to item_path(@item)
    else
      redirect_to new_user_session_path
      @order_item.save!
    end
  end

  # def update
  #   @order_item = @order.order_items.find(params[:id])
  #   @order_item.update_attributes(order_params)
  #   @order_items = current_order.order_items
  # end

  # def destroy
  #   @order_item = @order.order_items.find(params[:id])
  #   @order_item.destroy
  #   @order_items = current_order.order_items
  # end

  private

  def order_params
    params.require(:order_item).permit(:quantity, :item_id)
  end

  # def create_order
  #   @order_item = OrderItem.find(@order_item.id)
  #   @order = Order.new(order_item_id: @order_item.id)
  #   @order.save!
  # end

  # def current_user
  #   @current_user ||= session[:current_user_id] &&
  #                     User.find_by(id: session[:current_user_id])
  # end

  # def set_order
  #   @order = current_order
  # end
end
