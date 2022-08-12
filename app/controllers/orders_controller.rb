class OrdersController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index]

  def index
    session[:visit_count] ||= 0 # initialize
    session[:visit_count] += 1 # increment
    @visit_count = session[:visit_count]

    @orders = [] << OrderItem.find(session[:order])

    # if user_signed_in?
    #   @order = Order.where(user_id: current_user)
    # else
    #   if session[:order]
    #     @order = Order.find(session[:order])
    #     # @order_items = @order.where(order_item_id: @order_item)
    #   else
    #     @order = Order.create
    #     session[:order] = @order.id
    #   end
    # end
  end
end
