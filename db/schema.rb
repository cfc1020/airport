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

ActiveRecord::Schema.define(version: 20151026151226) do

  create_table "airplane_state_transitions", force: :cascade do |t|
    t.integer  "airplane_id", limit: 4
    t.string   "event",       limit: 255
    t.string   "from",        limit: 255
    t.string   "to",          limit: 255
    t.datetime "created_at"
  end

  add_index "airplane_state_transitions", ["airplane_id"], name: "index_airplane_state_transitions_on_airplane_id", using: :btree

  create_table "airplanes", force: :cascade do |t|
    t.string   "name",       limit: 255, null: false
    t.string   "state",      limit: 255, null: false
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  add_index "airplanes", ["name"], name: "index_airplanes_on_name", unique: true, using: :btree

  add_foreign_key "airplane_state_transitions", "airplanes"
end
