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

ActiveRecord::Schema.define(version: 2021_03_08_044543) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "genres", force: :cascade do |t|
    t.string "genre"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "line_items", force: :cascade do |t|
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.bigint "song_id", null: false
    t.bigint "shopping_cart_id", null: false
    t.bigint "user_id", null: false
    t.index ["shopping_cart_id"], name: "index_line_items_on_shopping_cart_id"
    t.index ["song_id"], name: "index_line_items_on_song_id"
    t.index ["user_id"], name: "index_line_items_on_user_id"
  end

  create_table "orders", force: :cascade do |t|
    t.integer "total_price"
    t.date "date"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.bigint "song_id", null: false
    t.bigint "user_id", null: false
    t.bigint "shopping_cart_id", null: false
    t.index ["shopping_cart_id"], name: "index_orders_on_shopping_cart_id"
    t.index ["song_id"], name: "index_orders_on_song_id"
    t.index ["user_id"], name: "index_orders_on_user_id"
  end

  create_table "shopping_carts", force: :cascade do |t|
    t.integer "total_price"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.bigint "song_id", null: false
    t.bigint "user_id", null: false
    t.index ["song_id"], name: "index_shopping_carts_on_song_id"
    t.index ["user_id"], name: "index_shopping_carts_on_user_id"
  end

  create_table "songs", force: :cascade do |t|
    t.string "name"
    t.integer "rating"
    t.string "priceing_type"
    t.integer "price"
    t.string "state"
    t.bigint "user_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.bigint "genre_id", null: false
    t.index ["genre_id"], name: "index_songs_on_genre_id"
    t.index ["user_id"], name: "index_songs_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "first_name"
    t.string "last_name"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  create_table "views", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["email"], name: "index_views_on_email", unique: true
    t.index ["reset_password_token"], name: "index_views_on_reset_password_token", unique: true
  end

  add_foreign_key "line_items", "shopping_carts"
  add_foreign_key "line_items", "songs"
  add_foreign_key "line_items", "users"
  add_foreign_key "orders", "shopping_carts"
  add_foreign_key "orders", "songs"
  add_foreign_key "orders", "users"
  add_foreign_key "shopping_carts", "songs"
  add_foreign_key "shopping_carts", "users"
  add_foreign_key "songs", "genres"
  add_foreign_key "songs", "users"
end
