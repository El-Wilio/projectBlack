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

ActiveRecord::Schema.define(version: 20140713052132) do

  create_table "clubs", force: true do |t|
    t.string   "name",        null: false
    t.string   "description"
    t.string   "permalink",   null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "clubs", ["name"], name: "index_clubs_on_name"
  add_index "clubs", ["permalink"], name: "index_clubs_on_permalink", unique: true

  create_table "clubs_tags", id: false, force: true do |t|
    t.integer "club_id", null: false
    t.integer "tag_id",  null: false
  end

  add_index "clubs_tags", ["club_id", "tag_id"], name: "index_clubs_tags_on_club_id_and_tag_id", unique: true

  create_table "clubs_users", id: false, force: true do |t|
    t.integer "club_id",  null: false
    t.integer "user_id",  null: false
    t.integer "power_id"
  end

  create_table "powers", force: true do |t|
    t.string "role"
  end

  create_table "tags", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "tags", ["name"], name: "index_tags_on_name", unique: true

  create_table "users", force: true do |t|
    t.string   "email",                  default: "",      null: false
    t.string   "username",               default: "Guest", null: false
    t.string   "encrypted_password",     default: "",      null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,       null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  add_index "users", ["username"], name: "index_users_on_username", unique: true

end
