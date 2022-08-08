class CartsController < ApplicationController
  # == order
  skip_before_action :authenticate_user!, only: [:show]

  def show
    @order_items = current_order.order_items
    # if user_signed_in?
    #   @cart = Cart.where(user_id: current_user)
    # else
    #   if session[:cart]
    #     @cart = Cart.find(session[:cart])
    #     @order_items = @cart.order_items
    #   else
    #     @cart = Cart.create
    #     session[:cart] = @cart.id
    #   end
    # end
  end
end
