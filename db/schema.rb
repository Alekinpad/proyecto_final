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

ActiveRecord::Schema.define(version: 20160523230110) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "comments", force: :cascade do |t|
    t.integer  "commentable_id"
    t.string   "commentable_type"
    t.text     "content"
    t.integer  "user_id"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
  end

  add_index "comments", ["user_id"], name: "index_comments_on_user_id", using: :btree

  create_table "likes", force: :cascade do |t|
    t.integer  "likeable_id"
    t.string   "likeable_type"
    t.integer  "user_id"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  add_index "likes", ["user_id"], name: "index_likes_on_user_id", using: :btree

  create_table "lines", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "product_wishlists", force: :cascade do |t|
    t.integer  "user_wishlist_id"
    t.integer  "product_id"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
    t.integer  "wishlist_id"
  end

  add_index "product_wishlists", ["product_id"], name: "index_product_wishlists_on_product_id", using: :btree
  add_index "product_wishlists", ["user_wishlist_id"], name: "index_product_wishlists_on_user_wishlist_id", using: :btree
  add_index "product_wishlists", ["wishlist_id"], name: "index_product_wishlists_on_wishlist_id", using: :btree

  create_table "products", force: :cascade do |t|
    t.string   "name"
    t.text     "description"
    t.string   "photo"
    t.integer  "price"
    t.integer  "stock"
    t.integer  "store_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  add_index "products", ["store_id"], name: "index_products_on_store_id", using: :btree

  create_table "station_lines", force: :cascade do |t|
    t.integer  "station_id"
    t.integer  "line_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "station_lines", ["line_id"], name: "index_station_lines_on_line_id", using: :btree
  add_index "station_lines", ["station_id"], name: "index_station_lines_on_station_id", using: :btree

  create_table "station_stores", force: :cascade do |t|
    t.integer  "station_id"
    t.integer  "store_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "station_stores", ["station_id"], name: "index_station_stores_on_station_id", using: :btree
  add_index "station_stores", ["store_id"], name: "index_station_stores_on_store_id", using: :btree

  create_table "stations", force: :cascade do |t|
    t.string   "name"
    t.float    "latitude"
    t.float    "longitude"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string   "address"
  end

  create_table "stores", force: :cascade do |t|
    t.string   "name"
    t.text     "description"
    t.string   "photo"
    t.string   "cover_photo"
    t.string   "facebook_link"
    t.string   "instagram_link"
    t.integer  "user_id"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
    t.string   "phone_number"
  end

  add_index "stores", ["user_id"], name: "index_stores_on_user_id", using: :btree

  create_table "taggings", force: :cascade do |t|
    t.integer  "tag_id"
    t.integer  "taggable_id"
    t.string   "taggable_type"
    t.integer  "tagger_id"
    t.string   "tagger_type"
    t.string   "context",       limit: 128
    t.datetime "created_at"
  end

  add_index "taggings", ["tag_id", "taggable_id", "taggable_type", "context", "tagger_id", "tagger_type"], name: "taggings_idx", unique: true, using: :btree
  add_index "taggings", ["taggable_id", "taggable_type", "context"], name: "index_taggings_on_taggable_id_and_taggable_type_and_context", using: :btree

  create_table "tags", force: :cascade do |t|
    t.string  "name"
    t.integer "taggings_count", default: 0
  end

  add_index "tags", ["name"], name: "index_tags_on_name", unique: true, using: :btree

  create_table "user_wishlists", force: :cascade do |t|
    t.integer  "user_id"
    t.integer  "wishlist_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  add_index "user_wishlists", ["user_id"], name: "index_user_wishlists_on_user_id", using: :btree
  add_index "user_wishlists", ["wishlist_id"], name: "index_user_wishlists_on_wishlist_id", using: :btree

  create_table "users", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet     "current_sign_in_ip"
    t.inet     "last_sign_in_ip"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.string   "provider"
    t.string   "uid"
    t.string   "name"
    t.string   "avatar"
    t.integer  "role"
    t.string   "gender"
    t.string   "birthday"
    t.string   "cover_photo"
    t.float    "latitude"
    t.float    "longitude"
    t.string   "address"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

  create_table "wishlists", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string   "icon"
  end

  add_foreign_key "comments", "users"
  add_foreign_key "likes", "users"
  add_foreign_key "product_wishlists", "products"
  add_foreign_key "product_wishlists", "user_wishlists"
  add_foreign_key "product_wishlists", "wishlists"
  add_foreign_key "products", "stores"
  add_foreign_key "station_lines", "lines"
  add_foreign_key "station_lines", "stations"
  add_foreign_key "station_stores", "stations"
  add_foreign_key "station_stores", "stores"
  add_foreign_key "stores", "users"
  add_foreign_key "user_wishlists", "users"
  add_foreign_key "user_wishlists", "wishlists"
end
