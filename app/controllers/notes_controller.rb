class NotesController < ApplicationController
# inconsistent indentation across controllers
def create
  @item = Item.find(params[:item_id])
  @note = @item.notes.create(note_params)
  redirect_to item_path(@item)
end

def destroy
  @item = Item.find(params[:item_id])
  @note = @item.notes.find(params[:id])
  @note.destroy
  redirect_to item_path(@item)
end

private
  def note_params
    params.require(:note).permit(:author, :body)
  end

end
