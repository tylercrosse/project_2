class NotesController < ApplicationController
def show
  @item = Item.find(params[:item_id])
  @note = @item.notes.find(params[:id])
end

def edit
  @item = Item.find(params[:item_id])
  @note = @item.notes.find(params[:id])
end

def update
  @item = Item.find(params[:item_id])
  @note = @item.notes.find(params[:id])
  @note.update(note_params)
  redirect_to edit_item_note_path, notice: "Note Successfully Updated"
end

def create
  @item = Item.find(params[:item_id])
  @note = @item.notes.create(note_params)
  redirect_to item_path(@item)
end

def destroy
  @item = Item.find(params[:post_id])
  @note = @item.notes.find(params[:id])
  @note.destroy
  redirect_to item_path(@item)
end

private
  def note_params
    params.require(:note).permit(:author, :body)
  end

end
