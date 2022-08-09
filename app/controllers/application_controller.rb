class ApplicationController < ActionController::Base
  before_action :authenticate_user!
  # helper_method :current_order

  # def current_order
  #   if Order.find_by_id(session[:order_id]).nil?
  #     Order.new
  #   else
  #     Order.find_by_id(session[:order_id])
  #   end
  # end
end
