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

ActiveRecord::Schema.define(version: 20160706171626) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "guests", force: :cascade do |t|
    t.string   "mailing_title"
    t.string   "first_name"
    t.string   "last_name"
    t.string   "spouse_first_name"
    t.string   "spouse_last_name"
    t.string   "address_line1"
    t.string   "address_line2"
    t.string   "city"
    t.string   "state"
    t.string   "zip"
    t.string   "country"
    t.string   "relationship"
    t.string   "email"
    t.string   "spouse_email"
    t.boolean  "send_invitation",   default: true
    t.string   "gift_received"
    t.boolean  "thank_you_sent",    default: false
    t.datetime "created_at",                        null: false
    t.datetime "updated_at",                        null: false
    t.integer  "user_id"
  end

  create_table "place_cards", force: :cascade do |t|
    t.string   "name"
    t.integer  "table_number"
    t.boolean  "print",        default: true
    t.integer  "guest_id"
    t.datetime "created_at",                  null: false
    t.datetime "updated_at",                  null: false
  end

  add_index "place_cards", ["guest_id"], name: "index_place_cards_on_guest_id", using: :btree

  create_table "users", force: :cascade do |t|
    t.string "username"
    t.string "password"
  end

  add_foreign_key "place_cards", "guests"
end
