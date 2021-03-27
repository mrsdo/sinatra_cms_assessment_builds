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

ActiveRecord::Schema.define(version: 2021_03_27_003933) do

  create_table "hoas", charset: "utf8", force: :cascade do |t|
    t.string "contact"
    t.string "phone"
    t.string "email"
    t.string "community"
    t.string "address"
    t.string "city"
    t.string "state"
    t.integer "zipcode"
    t.string "website"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "listings", charset: "utf8", force: :cascade do |t|
    t.string "address"
    t.string "status"
    t.date "first_listed"
    t.string "bedrooms"
    t.string "bathrooms"
    t.string "summary"
    t.string "sqft"
    t.string "asking_price"
    t.string "photo_1"
    t.string "photo_2"
    t.string "photo_3"
    t.string "photo_4"
    t.string "phone"
    t.string "community"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.bigint "hoa_id"
    t.bigint "users_id"
    t.index ["hoa_id"], name: "index_listings_on_hoa_id"
    t.index ["users_id"], name: "index_listings_on_users_id"
  end

  create_table "roles", charset: "utf8", force: :cascade do |t|
    t.string "role_name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "users", charset: "utf8", force: :cascade do |t|
    t.string "fname"
    t.string "lname"
    t.string "email"
    t.string "username"
    t.string "password_digest"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.bigint "roles_id"
    t.index ["roles_id"], name: "index_users_on_roles_id"
  end

  add_foreign_key "listings", "hoas"
  add_foreign_key "listings", "users", column: "users_id"
  add_foreign_key "users", "roles", column: "roles_id"
end
