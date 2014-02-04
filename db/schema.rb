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

ActiveRecord::Schema.define(version: 20140124150437) do

  create_table "courses", force: true do |t|
    t.string   "title"
    t.text     "description"
    t.integer  "attendees",                           default: 15
    t.decimal  "price",       precision: 7, scale: 2, default: 0.0
    t.integer  "partner_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "courses", ["partner_id"], name: "index_courses_on_partner_id", using: :btree

  create_table "partners", force: true do |t|
    t.string   "title"
    t.string   "address"
    t.string   "email"
    t.string   "phone"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
