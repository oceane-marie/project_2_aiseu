class OrdersController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index]

  def index
    if user_signed_in?
      @order = Order.where(user_id: current_user)
    else
      if session[:order]
        @order = Order.find(session[:order])
        @order_items = @order.order_items
      else
        @order = Order.create
        session[:order] = @order.id
      end
    end
  end
end
