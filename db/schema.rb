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

ActiveRecord::Schema.define(version: 20190127160803) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "artist_has_events", force: :cascade do |t|
    t.bigint "event_id"
    t.bigint "artist_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["artist_id"], name: "index_artist_has_events_on_artist_id"
    t.index ["event_id"], name: "index_artist_has_events_on_event_id"
  end

  create_table "artists", force: :cascade do |t|
    t.string "name"
    t.string "facebook_link"
    t.string "intagram_link_string"
    t.string "spotify_link"
    t.string "donation_link"
    t.string "hire_link"
    t.string "genre"
    t.string "profile_picture"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "events", force: :cascade do |t|
    t.string "date"
    t.string "location"
    t.string "event_picture"
    t.string "buy_link"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "name"
  end

  add_foreign_key "artist_has_events", "artists"
  add_foreign_key "artist_has_events", "events"
end
