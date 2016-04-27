class FixColumnName < ActiveRecord::Migration
  def change
    rename_column :items, :photo_url, :image
  end
end
