class OutfitsController  < ApplicationController
  def index
    @outfits = Outfit.all
  end

  def show
    @outfit = Outfit.find(params[:id])
  end

  def new
    @outfit = Outfit.new
  end

  def create
    @outfit = Outfit.new(outfit_params)
      if @outfit.save
        redirect_to @outfit
      else
        render :new
      end
  end

  def destroy
    @outfit = Outfit.find(params[:id])
    @outfit.destroy
    redirect_to outfits_url
  end

  def add_item
    @outfit = Outfit.find(params[:id])
    @outfit.styles.create(item_id: params[:item_id]
    redirect_to @outfit
  end

  def remove_item
    @outfit = Outfit.find(params[:id])
    styles = @outfit.styles.where(item_id: params[:item_id]).destroy_all
    redirect_to @outfit
  end

  private
  def outfit_params
    params.require(:outfit).permit(:name)
  end
end
