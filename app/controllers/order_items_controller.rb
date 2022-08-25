class OrderItemsController < ApplicationController
  skip_before_action :authenticate_user!
  # before_action :current_order

  def create
    @item = Item.find(params[:item_id])

    #create an order
    unless @order
      if current_user
        order = current_user.order || Order.create(user: current_user)
        @order = order
      elsif session[:order_id]
        @order = Order.where(id: session[:order_id]).first || Order.create
      else
        @order = Order.create
        @order_item = OrderItem.new(order_params)
        @order_item.order_id = @order.id
        if @order_item.save!
          redirect_to item_path(@item)
        end
      end
    end

    # tip: if save doens't work use .save! to show where is the pb !!


    # if user_signed_in?
    #   @order_item.save!
    #   redirect_to item_path(@item)
    # else
    #   redirect_to new_user_session_path
    #   @order_item.save!
    # end
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
end
