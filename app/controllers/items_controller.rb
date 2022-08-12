class ItemsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show]

  def index
    @items = Item.all

    # sort by temp
    if params[:temp].present?
      @items = Item.where('temp ILIKE ?', "%#{params[:temp]}%")
    elsif params[:flavor].present?
      @items = Item.where('flavor ILIKE ?', "%#{params[:flavor]}%")
    else
      @items = Item.all
    end
    # ajax
    respond_to do |format|
      format.html
      format.text { render partial: 'list.html', locals: { items: @items } }
    end
  end

  def show
    @item = Item.find(params[:id])

    # new
    @order_item = OrderItem.new
  end
end
