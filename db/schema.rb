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

ActiveRecord::Schema.define(version: 20131121081914) do

  create_table "artist_locations", force: true do |t|
    t.integer  "location_id"
    t.integer  "artist_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "artists", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "genre_id"
    t.text     "bio",              default: ""
    t.integer  "self_portrait_id"
  end

  create_table "genres", force: true do |t|
    t.integer  "location_id"
    t.string   "name"
    t.text     "description", default: ""
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "locations", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.text     "about",      default: ""
    t.text     "hours",      default: ""
    t.text     "contact",    default: ""
    t.text     "home",       default: ""
    t.text     "shows",      default: ""
    t.text     "gallery",    default: ""
    t.string   "copyright",  default: ""
  end

  create_table "pics", force: true do |t|
    t.string   "image"
    t.integer  "artist_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
