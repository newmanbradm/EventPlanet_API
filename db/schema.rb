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

ActiveRecord::Schema.define(version: 2018_08_30_141821) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "comments", force: :cascade do |t|
    t.text "message"
    t.bigint "post_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["post_id"], name: "index_comments_on_post_id"
  end

  create_table "event_guests", force: :cascade do |t|
    t.bigint "event_id"
    t.bigint "guest_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["event_id"], name: "index_event_guests_on_event_id"
    t.index ["guest_id"], name: "index_event_guests_on_guest_id"
  end

  create_table "event_venues", force: :cascade do |t|
    t.bigint "event_id"
    t.bigint "venue_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["event_id"], name: "index_event_venues_on_event_id"
    t.index ["venue_id"], name: "index_event_venues_on_venue_id"
  end

  create_table "events", force: :cascade do |t|
    t.string "title"
    t.string "date"
    t.string "rain_date"
    t.text "description"
    t.text "contact_details"
    t.integer "budget"
    t.bigint "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_events_on_user_id"
  end

  create_table "guests", force: :cascade do |t|
    t.string "name"
    t.string "phone_number"
    t.string "email"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "posts", force: :cascade do |t|
    t.text "image_url"
    t.bigint "event_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["event_id"], name: "index_posts_on_event_id"
  end

  create_table "supplies", force: :cascade do |t|
    t.string "name"
    t.float "price"
    t.text "store_url"
    t.bigint "event_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["event_id"], name: "index_supplies_on_event_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.string "password_digest"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "venues", force: :cascade do |t|
    t.text "image_url"
    t.string "name"
    t.text "address"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "comments", "posts"
  add_foreign_key "event_guests", "events"
  add_foreign_key "event_guests", "guests"
  add_foreign_key "event_venues", "events"
  add_foreign_key "event_venues", "venues"
  add_foreign_key "events", "users"
  add_foreign_key "posts", "events"
  add_foreign_key "supplies", "events"
end
