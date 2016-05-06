class ItemsController < ApplicationController
def index
  @items = Item.where(archive: false)
end

def closet
  @items = Item.where(wishlist: false, archive: false)
  render :index
end

# nice use of custom actions paired with routes
def add_to_closet
  @item = Item.find(params[:id])
  @item.update(:wishlist => false, :archive => false)

  redirect_to items_path, notice: "Item added to closet"
end

def archive
  @items = Item.where(archive: true)
  render :archive
end

def add_to_archive
  @item = Item.find(params[:id])
  @item.update(archive: true)

  redirect_to items_path, notice: "Item added to archives"
end

def wishlist
  @items = Item.where(wishlist: true)
  render :index
end

def add_to_wishlist
  @item = Item.find(params[:id])
  @item.update(wishlist: true)

  redirect_to wishlist_items_path, notice: "Item added to wishlist"
end

def show
  @items = Item.where(archive: false)
  @item = Item.find(params[:id])
  @tagging = Tagging.new
end

def new
  @item = Item.new()
end

def create
  @item = Item.create(item_params)
  if @item.save
    redirect_to @item, notice: "New Item Created"
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
    redirect_to @item, notice: "Item Successfully Changed"
  else
    @items = Item.where(archive: false)
    render 'edit'
  end
  # nice use of error handling paired with validations!
end

def destroy
  @item = Item.find(params[:id])
  @item.destroy
  redirect_to items_path, notice: "Item Discarded"
end

private
def item_params
  params.require(:item).permit(:description, :image, :value, :brand, :size, :fabric, :garment_care, :wishlist)
end #this is a clue that everything above should be indented one level
end
