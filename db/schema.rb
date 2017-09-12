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

ActiveRecord::Schema.define(version: 20170912181157) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "demand_travels", force: :cascade do |t|
    t.integer  "user_id"
    t.integer  "offer_travel_id"
    t.boolean  "accept"
    t.boolean  "state"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  add_index "demand_travels", ["offer_travel_id"], name: "index_demand_travels_on_offer_travel_id", using: :btree
  add_index "demand_travels", ["user_id"], name: "index_demand_travels_on_user_id", using: :btree

  create_table "offer_travels", force: :cascade do |t|
    t.integer  "user_id"
    t.integer  "vechicle_id"
    t.float    "coordenada_start"
    t.float    "coordenada_end"
    t.string   "name_start"
    t.string   "name_end"
    t.boolean  "state"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
  end

  add_index "offer_travels", ["user_id"], name: "index_offer_travels_on_user_id", using: :btree
  add_index "offer_travels", ["vechicle_id"], name: "index_offer_travels_on_vechicle_id", using: :btree

  create_table "type_vehicles", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet     "current_sign_in_ip"
    t.inet     "last_sign_in_ip"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.date     "birthday"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

  create_table "vechicles", force: :cascade do |t|
    t.integer  "user_id"
    t.integer  "type_vehicle_id"
    t.string   "model"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  add_index "vechicles", ["type_vehicle_id"], name: "index_vechicles_on_type_vehicle_id", using: :btree
  add_index "vechicles", ["user_id"], name: "index_vechicles_on_user_id", using: :btree

  add_foreign_key "demand_travels", "offer_travels"
  add_foreign_key "demand_travels", "users"
  add_foreign_key "offer_travels", "users"
  add_foreign_key "offer_travels", "vechicles"
  add_foreign_key "vechicles", "type_vehicles"
  add_foreign_key "vechicles", "users"
end
