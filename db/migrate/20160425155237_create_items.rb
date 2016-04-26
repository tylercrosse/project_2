class CreateItems < ActiveRecord::Migration
  def change
    create_table :items do |t|
      t.string :description, null:false
      t.string :photo_url, null:false
      t.decimal :value, precision:6, scale: 2
      t.string :brand
      t.string :size
      t.string :fabric
      t.string :garment_care
      t.boolean :wishlist, :default => false
      t.boolean :archive, :default => false
      t.datetime :created_at
    end
  end
end
