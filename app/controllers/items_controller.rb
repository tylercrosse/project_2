class ItemsController < ApplicationController
def index
  @items = Item.where(archive: false)
end

def closet
  @items = Item.where(wishlist: false)
  render :index
end

def add_to_closet
  @item = Item.find(params[:id])
  @item.update(wishlist: false)

  redirect_to items_path, notice: "Added to closet"
end

def wishlist
  @items = Item.where(wishlist: true)
  render :index
end

def add_to_wishlist
  @item = Item.find(params[:id])
  @item.update(wishlist: true)

  redirect_to wishlist_items_path, notice: "Added to wishlist"
end

def show
  @items = Item.all
  @item = Item.find(params[:id])
end

def new
  @item = Item.new()
end

def create
  @item = Item.create(item_params)
  if @item.save
    redirect_to @item, notice: "Item Successfully Created"
  else
    render 'new'
  end
end

def edit
  @items = Item.all
  @item = Item.find(params[:id])
end

def update
  @item = Item.find(params[:id])
  if @item.update(item_params)
    redirect_to @item, notice: "Item Successfully Updated"
  else
    render 'edit'
  end
end

def destroy
  @item = Item.find(params[:id])
  @item.destroy
  redirect_to items_path, notice: "Item Successfully Discarded"
end

private
def item_params
  params.require(:item).permit(:description, :photo_url, :value, :brand, :size, :fabric, :garment_care, :wishlist)
end
end
