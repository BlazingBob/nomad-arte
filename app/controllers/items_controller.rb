class ItemsController < ApplicationController
  def index
    @items = Item.all
    @query = params[:query]
    if @query.present?
      sql_subquery = "title ILIKE ? OR synopsis ILIKE :query"
      @items = Item.where('name ILIKE ?', "%#{@query}")
    else
      "No results found"
    end
  end

  def show
    @item = Item.find(params[:id])
  end
  
  def new
    @item = Item.new
  end

  def create
    @item = Item.new(item_params)
    @item.user = current_user
    if @item.save
      redirect_to item_path(@item)
    else
      render :new, status: :unprocessable_entity
    end
  end

  private

  def item_params
    params.require(:item).permit(:name, :description, :price_per_day, :category_name, :image)
  end
end
