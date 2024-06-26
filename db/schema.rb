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

ActiveRecord::Schema[7.1].define(version: 2024_05_10_121212) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "bookings", force: :cascade do |t|
    t.bigint "user_id", null: false
    t.bigint "celebrant_id", null: false
    t.date "booking_date"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "ceremony"
    t.index ["celebrant_id"], name: "index_bookings_on_celebrant_id"
    t.index ["user_id"], name: "index_bookings_on_user_id"
  end

  create_table "celebrants", force: :cascade do |t|
    t.string "username"
    t.string "location"
    t.float "rate"
    t.bigint "user_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.text "languages"
    t.text "services"
    t.text "bio"
    t.float "latitude"
    t.float "longitude"
    t.integer "years_experience"
    t.index ["user_id"], name: "index_celebrants_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "location"
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "bookings", "celebrants"
  add_foreign_key "bookings", "users"
  add_foreign_key "celebrants", "users"
end
