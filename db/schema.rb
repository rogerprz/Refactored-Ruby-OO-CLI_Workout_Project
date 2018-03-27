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

ActiveRecord::Schema.define(version: 5) do

  create_table "game", force: :cascade do |t|
    t.string  "title"
    t.string  "release_date"
    t.string  "ESRB"
    t.string  "genre"
    t.integer "company_id"
    t.string  "platform"
    t.string  "overview"
  end

  create_table "game_company", force: :cascade do |t|
    t.string  "name"
    t.string  "founded"
    t.string  "headquarters"
    t.integer "games_id"
  end

  create_table "profile", force: :cascade do |t|
    t.string  "email"
    t.integer "library_id"
    t.boolean "status"
    t.string  "gamertag"
  end

  create_table "review", force: :cascade do |t|
    t.string  "details"
    t.integer "rating"
  end

  create_table "user", force: :cascade do |t|
    t.string  "name"
    t.string  "country"
    t.string  "state"
    t.integer "profile_id"
  end

end
