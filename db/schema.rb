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

ActiveRecord::Schema.define(version: 2020_08_28_172157) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "establishment_collections", force: :cascade do |t|
    t.bigint "user_id", null: false
    t.bigint "establishment_id", null: false
    t.string "user_comments"
    t.boolean "visited"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["establishment_id"], name: "index_establishment_collections_on_establishment_id"
    t.index ["user_id"], name: "index_establishment_collections_on_user_id"
  end

  create_table "establishments", force: :cascade do |t|
    t.string "name"
    t.string "address"
    t.string "phone_number"
    t.float "lat"
    t.float "lng"
    t.float "rating"
    t.string "img_url"
    t.string "website_url"
    t.string "reference_id"
    t.bigint "us_state_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["us_state_id"], name: "index_establishments_on_us_state_id"
  end

  create_table "map_markers", force: :cascade do |t|
    t.bigint "user_id", null: false
    t.bigint "establishment_id", null: false
    t.string "category"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["establishment_id"], name: "index_map_markers_on_establishment_id"
    t.index ["user_id"], name: "index_map_markers_on_user_id"
  end

  create_table "state_collections", force: :cascade do |t|
    t.bigint "user_id", null: false
    t.bigint "us_state_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["us_state_id"], name: "index_state_collections_on_us_state_id"
    t.index ["user_id"], name: "index_state_collections_on_user_id"
  end

  create_table "us_states", force: :cascade do |t|
    t.string "name"
    t.string "abbrv"
    t.string "nickname"
    t.string "capital_city"
    t.float "capital_lat"
    t.float "capital_lng"
    t.string "flag_img_url"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "username"
    t.string "password_digest"
    t.string "name"
    t.integer "age"
    t.string "location"
    t.string "email_address"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  add_foreign_key "establishment_collections", "establishments"
  add_foreign_key "establishment_collections", "users"
  add_foreign_key "establishments", "us_states"
  add_foreign_key "map_markers", "establishments"
  add_foreign_key "map_markers", "users"
  add_foreign_key "state_collections", "us_states"
  add_foreign_key "state_collections", "users"
end
