class ItemsController < ApplicationController
def index
  @items = Item.all
  @item
end

def show
  @items = Item.all
  @item = Item.find(params[:id])
end

end
