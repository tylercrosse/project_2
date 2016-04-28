# encoding: UTF-8
# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20160428025915) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "items", force: :cascade do |t|
    t.string   "description",                                          null: false
    t.string   "image"
    t.decimal  "value",        precision: 6, scale: 2
    t.string   "brand"
    t.string   "size"
    t.string   "composition"
    t.string   "garment_care"
    t.boolean  "wishlist",                             default: false
    t.boolean  "archive",                              default: false
    t.datetime "created_at"
  end

  create_table "notes", force: :cascade do |t|
    t.text     "body"
    t.integer  "item_id"
    t.datetime "created_at"
  end

  add_index "notes", ["item_id"], name: "index_notes_on_item_id", using: :btree

  create_table "outfits", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "styles", force: :cascade do |t|
    t.integer  "item_id"
    t.integer  "outfit_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "styles", ["item_id"], name: "index_styles_on_item_id", using: :btree
  add_index "styles", ["outfit_id"], name: "index_styles_on_outfit_id", using: :btree

  create_table "taggings", force: :cascade do |t|
    t.integer  "tag_id"
    t.integer  "item_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "taggings", ["item_id"], name: "index_taggings_on_item_id", using: :btree
  add_index "taggings", ["tag_id"], name: "index_taggings_on_tag_id", using: :btree

  create_table "tags", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "notes", "items"
  add_foreign_key "styles", "items"
  add_foreign_key "styles", "outfits"
  add_foreign_key "taggings", "items"
  add_foreign_key "taggings", "tags"
end
