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

ActiveRecord::Schema.define(version: 20161029210552) do

  create_table "users", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.string   "firstname"
    t.string   "lastname"
    t.integer  "classyear"
    t.string   "bloc1"
    t.string   "bloc2"
    t.string   "bloc3"
    t.string   "school"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true

  create_table "values", force: :cascade do |t|
    t.string   "whoserve"
    t.string   "howserve"
    t.text     "legacy"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "user_id"
  end

  add_index "values", ["user_id"], name: "index_values_on_user_id"

  create_table "visions", force: :cascade do |t|
    t.string   "industry"
    t.string   "ten"
    t.string   "dreamjob"
    t.string   "style"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "score"
    t.integer  "user_id"
  end

  add_index "visions", ["user_id"], name: "index_visions_on_user_id"

end
