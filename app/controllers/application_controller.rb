class ApplicationController < ActionController::Base
  before_action :authenticate_user!
  helper_method :current_order

  def current_order
    if Cart.find_by_id(session[:cart_id]).nil?
      Cart.new
    else
      Cart.find_by_id(session[:cart_id])
    end
  end
end
