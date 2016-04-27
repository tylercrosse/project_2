class ChangeColumnNull < ActiveRecord::Migration
  def change
    change_column :items, :image, :string, :null => true
  end
end
