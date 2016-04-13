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

ActiveRecord::Schema.define(version: 20160412223715) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "admins", force: :cascade do |t|
    t.string   "firstname"
    t.string   "lastname"
    t.string   "username"
    t.string   "email"
    t.string   "password"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "buisnesses", force: :cascade do |t|
    t.string   "username"
    t.string   "email"
    t.string   "password"
    t.string   "buisnessname"
    t.string   "address"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  create_table "categories", force: :cascade do |t|
    t.string   "name"
    t.decimal  "minimumwage"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "resumes", force: :cascade do |t|
    t.string   "name",                limit: 30
    t.integer  "age"
    t.integer  "phonenumber"
    t.integer  "service_provider_id"
    t.string   "experience"
    t.string   "string"
    t.datetime "created_at",                     null: false
    t.datetime "updated_at",                     null: false
  end

  add_index "resumes", ["service_provider_id"], name: "index_resumes_on_service_provider_id", using: :btree

  create_table "reviews", force: :cascade do |t|
    t.decimal  "rating"
    t.text     "comment"
    t.date     "date"
    t.integer  "buisness_id"
    t.integer  "service_provider_id"
    t.datetime "created_at",          null: false
    t.datetime "updated_at",          null: false
  end

  add_index "reviews", ["buisness_id"], name: "index_reviews_on_buisness_id", using: :btree
  add_index "reviews", ["service_provider_id"], name: "index_reviews_on_service_provider_id", using: :btree

  create_table "service_providers", force: :cascade do |t|
    t.string   "username"
    t.string   "email"
    t.string   "password"
    t.string   "firstname"
    t.string   "lastname"
    t.boolean  "verified"
    t.string   "address"
    t.string   "postalcode"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "username"
    t.string   "email"
    t.string   "password"
    t.string   "type"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "resumes", "service_providers"
end
