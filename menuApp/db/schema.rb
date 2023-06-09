# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema[7.0].define(version: 2023_06_02_042446) do
  create_table "menu_items", force: :cascade do |t|
    t.string "name"
    t.string "description"
    t.float "price"
    t.integer "menus_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["menus_id"], name: "index_menu_items_on_menus_id"
  end

  create_table "menus", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "restaurants_id"
    t.index ["restaurants_id"], name: "index_menus_on_restaurants_id"
  end

  create_table "restaurants", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "menu_items", "menus", column: "menus_id"
end
