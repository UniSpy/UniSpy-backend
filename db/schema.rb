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

ActiveRecord::Schema.define(version: 20140508131819) do

  create_table "locations", force: true do |t|
    t.integer  "menu_id"
    t.string   "lat"
    t.string   "lng"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "locations", ["menu_id"], name: "index_locations_on_menu_id"

  create_table "meals", force: true do |t|
    t.integer  "menu_id"
    t.text     "fi"
    t.text     "en"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "meals", ["menu_id"], name: "index_meals_on_menu_id"

  create_table "menus", force: true do |t|
    t.string   "name"
    t.string   "address"
    t.string   "campus"
    t.string   "open"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "sessions", force: true do |t|
    t.integer  "user_id"
    t.string   "token"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "sessions", ["user_id"], name: "index_sessions_on_user_id"

  create_table "tags", force: true do |t|
    t.string   "content"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "tags_users", id: false, force: true do |t|
    t.integer "tag_id",  null: false
    t.integer "user_id", null: false
  end

  create_table "urls", force: true do |t|
    t.integer  "menu_id"
    t.string   "fi"
    t.string   "en"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "urls", ["menu_id"], name: "index_urls_on_menu_id"

  create_table "users", force: true do |t|
    t.string   "user"
    t.string   "password_digest"
    t.string   "email"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
