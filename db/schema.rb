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

ActiveRecord::Schema.define(version: 20160428023731) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "bars", force: :cascade do |t|
    t.text     "name"
    t.text     "nights"
    t.text     "time"
    t.text     "neighborhood"
    t.text     "address"
    t.text     "city"
    t.text     "state"
    t.text     "zip"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "examples", force: :cascade do |t|
    t.text     "text",       null: false
    t.integer  "user_id",    null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "examples", ["user_id"], name: "index_examples_on_user_id", using: :btree

  create_table "favorites", force: :cascade do |t|
    t.integer  "profile_id"
    t.integer  "bar_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "favorites", ["bar_id", "profile_id"], name: "index_favorites_on_bar_id_and_profile_id", unique: true, using: :btree
  add_index "favorites", ["bar_id"], name: "index_favorites_on_bar_id", using: :btree
  add_index "favorites", ["profile_id"], name: "index_favorites_on_profile_id", using: :btree

  create_table "profiles", force: :cascade do |t|
    t.text     "username"
    t.text     "fav_song"
    t.text     "quote"
    t.text     "pic"
    t.integer  "user_id",    null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "profiles", ["user_id"], name: "index_profiles_on_user_id", using: :btree

  create_table "reviews", force: :cascade do |t|
    t.integer  "profile_id"
    t.integer  "bar_id"
    t.text     "comment"
    t.integer  "rating"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "reviews", ["bar_id", "profile_id"], name: "index_reviews_on_bar_id_and_profile_id", unique: true, using: :btree
  add_index "reviews", ["bar_id"], name: "index_reviews_on_bar_id", using: :btree
  add_index "reviews", ["profile_id"], name: "index_reviews_on_profile_id", using: :btree

  create_table "users", force: :cascade do |t|
    t.string   "email",           null: false
    t.string   "token",           null: false
    t.string   "password_digest", null: false
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["token"], name: "index_users_on_token", unique: true, using: :btree

  add_foreign_key "examples", "users"
  add_foreign_key "favorites", "bars"
  add_foreign_key "favorites", "profiles"
  add_foreign_key "profiles", "users"
  add_foreign_key "reviews", "bars"
  add_foreign_key "reviews", "profiles"
end
