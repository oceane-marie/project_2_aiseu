class ItemsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show]
  def index
    @items = Item.all

    # sort by temp
    if params[:temp].present?
      @items = Item.where(temp: params[:temp])
    else
      @items = Item.all
    end
    # ajax
    # respond_to do |format|
    #   format.html
    #   format.text { render partial: 'list.html.erb', locals: { items: @items } }
    # end

    # if params[:flavor].present?
    #   @items = Item.where(flavor: params[:flavor])
    # else
    #   @items = Item.all
    # end
  end

  def show
    @item = Item.find(params[:id])
  end
end
