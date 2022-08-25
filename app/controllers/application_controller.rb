class ApplicationController < ActionController::Base
  before_action :authenticate_user!
  # def current_order
  #   if Order.find_by_id(session[:order_id]).nil?
  #     Order.new
  #   else
  #     Order.find_by_id(session[:order_id])
  #   end
  # end

  def current_user
    if @current_user
      return @current_user
    elsif session[:user_id] && user = User.where(:id => session[:user_id]).first
      @current_user = user
      return @current_user
    end
  end
end
