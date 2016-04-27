class TaggingsController < ApplicationController
  def new
    @item = Item.find(params[:item_id])
    @tagging = @item.taggings.new
  end

  def create
    @item = Item.find(params[:item_id])
    @tag = Tag.find_or_create_by(name: params[:tag_name])

    existing_tagging = Tagging.find_by(item: @item, tag: @tag)
      unless existing_tagging
        @item.taggings.create(tag: @tag)
      end
      redirect_to item_path(@item)
  end
end
