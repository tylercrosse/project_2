class CreateOutfits < ActiveRecord::Migration
  def change
    create_table :outfits do |t|
      t.string :name
      t.timestamps null: false
    end
  end
end
