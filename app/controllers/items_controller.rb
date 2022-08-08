class ItemsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show]

  def index
    @items = Item.all

    # sort by temp
    if params[:temp].present?
      @items = Item.where('temp ILIKE ?', "%#{params[:temp]}%")
    else
      @items = Item.all
    end

    # sort by flavor
    if params[:flavor].present?
      @items = Item.where('flavor ILIKE ?', "%#{params[:flavor]}%")
    else
      @items = Item.all
    end

     # ajax
    respond_to do |format|
      format.html
      format.text { render partial: 'list.html', locals: { items: @items }}
    end
  end

  def show
    @item = Item.find(params[:id])

    # new
    @order_item = OrderItem.new

    # create
    @order_item = OrderItem.new #(order_item_params)
    @order_item.item = params[:item_id] # @item
    if @order_item.save
      redirect_to item_path(@item)
    else
      render :show
    end
  end

  private

  def order_item_params
    params.require(:order_item).permit(:quantity)
  end
end
