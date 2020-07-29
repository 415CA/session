# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2020_07_29_161515) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "park_reviews", force: :cascade do |t|
    t.string "title"
    t.string "content"
    t.integer "rating"
    t.bigint "user_id", null: false
    t.bigint "skate_park_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["skate_park_id"], name: "index_park_reviews_on_skate_park_id"
    t.index ["user_id"], name: "index_park_reviews_on_user_id"
  end

  create_table "products", force: :cascade do |t|
    t.string "name"
    t.string "category"
    t.string "brand"
    t.integer "price"
    t.string "image"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "shop_reviews", force: :cascade do |t|
    t.string "title"
    t.string "content"
    t.integer "rating"
    t.bigint "user_id", null: false
    t.bigint "skate_shop_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["skate_shop_id"], name: "index_shop_reviews_on_skate_shop_id"
    t.index ["user_id"], name: "index_shop_reviews_on_user_id"
  end

  create_table "skate_parks", force: :cascade do |t|
    t.string "name"
    t.string "address"
    t.string "borough"
    t.string "description"
    t.integer "rating"
    t.string "google_map"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "skate_shop_products", force: :cascade do |t|
    t.bigint "skate_shop_id", null: false
    t.bigint "product_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["product_id"], name: "index_skate_shop_products_on_product_id"
    t.index ["skate_shop_id"], name: "index_skate_shop_products_on_skate_shop_id"
  end

  create_table "skate_shops", force: :cascade do |t|
    t.string "name"
    t.string "address"
    t.string "borough"
    t.string "description"
    t.integer "rating"
    t.string "google_map"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "skate_spots", force: :cascade do |t|
    t.string "name"
    t.string "address"
    t.string "borough"
    t.string "description"
    t.integer "rating"
    t.string "google_map"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "spot_reviews", force: :cascade do |t|
    t.string "title"
    t.string "content"
    t.integer "rating"
    t.bigint "user_id", null: false
    t.bigint "skate_spot_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["skate_spot_id"], name: "index_spot_reviews_on_skate_spot_id"
    t.index ["user_id"], name: "index_spot_reviews_on_user_id"
  end

  create_table "user_skate_parks", force: :cascade do |t|
    t.bigint "user_id", null: false
    t.bigint "skate_park_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["skate_park_id"], name: "index_user_skate_parks_on_skate_park_id"
    t.index ["user_id"], name: "index_user_skate_parks_on_user_id"
  end

  create_table "user_skate_shops", force: :cascade do |t|
    t.bigint "user_id", null: false
    t.bigint "skate_shop_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["skate_shop_id"], name: "index_user_skate_shops_on_skate_shop_id"
    t.index ["user_id"], name: "index_user_skate_shops_on_user_id"
  end

  create_table "user_skate_spots", force: :cascade do |t|
    t.bigint "user_id", null: false
    t.bigint "skate_spot_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["skate_spot_id"], name: "index_user_skate_spots_on_skate_spot_id"
    t.index ["user_id"], name: "index_user_skate_spots_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.integer "age"
    t.string "bio"
    t.string "borough"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "park_reviews", "skate_parks"
  add_foreign_key "park_reviews", "users"
  add_foreign_key "shop_reviews", "skate_shops"
  add_foreign_key "shop_reviews", "users"
  add_foreign_key "skate_shop_products", "products"
  add_foreign_key "skate_shop_products", "skate_shops"
  add_foreign_key "spot_reviews", "skate_spots"
  add_foreign_key "spot_reviews", "users"
  add_foreign_key "user_skate_parks", "skate_parks"
  add_foreign_key "user_skate_parks", "users"
  add_foreign_key "user_skate_shops", "skate_shops"
  add_foreign_key "user_skate_shops", "users"
  add_foreign_key "user_skate_spots", "skate_spots"
  add_foreign_key "user_skate_spots", "users"
end
