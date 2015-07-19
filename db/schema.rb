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

ActiveRecord::Schema.define(version: 20150719153411) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "annotations", force: :cascade do |t|
    t.integer  "song_fragment_id", null: false
    t.text     "contents",         null: false
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
  end

  add_index "annotations", ["song_fragment_id"], name: "index_annotations_on_song_fragment_id", unique: true, using: :btree

  create_table "artists", force: :cascade do |t|
    t.string   "name",             null: false
    t.text     "description"
    t.integer  "verified_user_id"
    t.integer  "image_id"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
  end

  add_index "artists", ["name"], name: "index_artists_on_name", using: :btree

  create_table "song_fragments", force: :cascade do |t|
    t.integer  "song_id",      null: false
    t.integer  "offset_start", null: false
    t.integer  "offset_end",   null: false
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  add_index "song_fragments", ["song_id"], name: "index_song_fragments_on_song_id", using: :btree

  create_table "songs", force: :cascade do |t|
    t.integer  "artist_id",   null: false
    t.string   "title",       null: false
    t.text     "description"
    t.text     "contents",    null: false
    t.integer  "image_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  add_index "songs", ["artist_id"], name: "index_songs_on_artist_id", using: :btree
  add_index "songs", ["title", "artist_id"], name: "index_songs_on_title_and_artist_id", unique: true, using: :btree
  add_index "songs", ["title"], name: "index_songs_on_title", using: :btree

  create_table "users", force: :cascade do |t|
    t.string   "email",           null: false
    t.string   "username",        null: false
    t.string   "password_digest", null: false
    t.string   "session_token",   null: false
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.string   "provider"
    t.integer  "uid"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["username"], name: "index_users_on_username", unique: true, using: :btree

end
