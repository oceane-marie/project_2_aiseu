class OrderItemsController < ApplicationController
  skip_before_action :authenticate_user!
  # before_action :set_order

  def create
    # @order = current_order
    @item = Item.find(params[:item_id])

    @order_item = OrderItem.new(order_params)

    @order_item.item = @item

    if @order_item.save
      redirect_to root_path
    else
      render "items/show"
    end
    # session[:order_id] = @order.id
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

  # def set_order
  #   @order = current_order
  # end
end
