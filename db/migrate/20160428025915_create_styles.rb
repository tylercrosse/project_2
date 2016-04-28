class CreateStyles < ActiveRecord::Migration
  def change
    create_table :styles do |t|
      t.references :item, index: true, foreign_key: true
      t.references :outfit, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
