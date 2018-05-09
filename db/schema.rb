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

ActiveRecord::Schema.define(version: 20180509112134) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "bookings", force: :cascade do |t|
    t.bigint "traveller_id"
    t.bigint "tour_guide_id"
    t.bigint "tour_id"
    t.boolean "has_paid", default: false
    t.decimal "rating"
    t.text "review"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["tour_guide_id"], name: "index_bookings_on_tour_guide_id"
    t.index ["tour_id"], name: "index_bookings_on_tour_id"
    t.index ["traveller_id"], name: "index_bookings_on_traveller_id"
  end

  create_table "locations", force: :cascade do |t|
    t.string "name"
    t.string "description"
    t.bigint "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_locations_on_user_id"
  end

  create_table "photos", force: :cascade do |t|
    t.text "image_data"
    t.text "description"
    t.boolean "is_profile"
    t.bigint "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_photos_on_user_id"
  end

  create_table "profiles", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.text "about_me"
    t.text "intro_tour_guide"
    t.decimal "fare_per_hour"
    t.string "street_address"
    t.string "city"
    t.string "state"
    t.string "country_code"
    t.string "postcode"
    t.string "phone_number"
    t.boolean "is_tour_guide"
    t.boolean "is_photographer"
    t.boolean "has_car"
    t.boolean "has_historical_knowledge"
    t.bigint "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_profiles_on_user_id"
  end

  create_table "tours", force: :cascade do |t|
    t.datetime "start_date_time"
    t.datetime "end_date_time"
    t.text "description"
    t.decimal "price"
    t.bigint "user_id"
    t.bigint "location_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["location_id"], name: "index_tours_on_location_id"
    t.index ["user_id"], name: "index_tours_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer "sign_in_count", default: 0, null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet "current_sign_in_ip"
    t.inet "last_sign_in_ip"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "bookings", "tours"
  add_foreign_key "locations", "users"
  add_foreign_key "photos", "users"
  add_foreign_key "profiles", "users"
  add_foreign_key "tours", "locations"
  add_foreign_key "tours", "users"
end
