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

ActiveRecord::Schema.define(version: 20141211082730) do

  create_table "crawling_data", force: true do |t|
    t.integer  "reference_code", limit: 4
    t.string   "title",          limit: 255
    t.string   "location",       limit: 255
    t.text     "description",    limit: 65535
    t.string   "apply_url",      limit: 255
    t.datetime "created_at",                   null: false
    t.datetime "updated_at",                   null: false
  end

  create_table "exports", force: true do |t|
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
    t.string   "site_url",   limit: 255
  end

  create_table "jobs", force: true do |t|
    t.string   "account_did",      limit: 255
    t.string   "posting_path",     limit: 255
    t.text     "apply_url",        limit: 65535
    t.string   "http_status_code", limit: 255
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "source_types", force: true do |t|
    t.string   "ats_name",   limit: 255
    t.string   "regex",      limit: 255
    t.string   "code",       limit: 255
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", force: true do |t|
    t.string   "email",                  limit: 255, default: "", null: false
    t.string   "encrypted_password",     limit: 255, default: "", null: false
    t.string   "reset_password_token",   limit: 255
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          limit: 4,   default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip",     limit: 255
    t.string   "last_sign_in_ip",        limit: 255
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

end
