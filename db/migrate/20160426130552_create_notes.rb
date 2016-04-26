class CreateNotes < ActiveRecord::Migration
  def change
    create_table :notes do |t|
      t.string :author
      t.text :body
      t.references :item, index: true, foreign_key: true

      t.datetime :created_at
    end
  end
end
