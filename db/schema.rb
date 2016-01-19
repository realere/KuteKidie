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

ActiveRecord::Schema.define(version: 20160119131115) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "babysitter_children", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "babysitters", force: :cascade do |t|
    t.string   "name"
    t.integer  "phone"
    t.string   "email"
    t.string   "location"
    t.text     "about_me"
    t.integer  "category_id"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
    t.string   "babysitter_image"
  end

  create_table "categories", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "childminders", force: :cascade do |t|
    t.string   "name"
    t.integer  "no_of_children"
    t.string   "phone_number"
    t.string   "email"
    t.string   "location"
    t.string   "rating"
    t.text     "about_me"
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
    t.integer  "user_id"
    t.integer  "category_id"
    t.string   "childminder_image"
  end

  create_table "children", force: :cascade do |t|
    t.integer  "age"
    t.integer  "parent_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "locations", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "nannies", force: :cascade do |t|
    t.string   "name"
    t.string   "age"
    t.integer  "no_of_children"
    t.string   "phone_number"
    t.string   "email"
    t.string   "location"
    t.string   "rating"
    t.text     "about_me"
    t.integer  "category_id"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
    t.string   "nanny_image"
  end

  create_table "nurseries", force: :cascade do |t|
    t.string   "name"
    t.string   "age_group"
    t.integer  "no_of_staff"
    t.string   "phone_number"
    t.string   "email"
    t.string   "location"
    t.string   "rating"
    t.integer  "available_space"
    t.text     "about_us"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  create_table "parents", force: :cascade do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.string   "phone_number"
    t.string   "email"
    t.string   "location"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  create_table "reviews", force: :cascade do |t|
    t.string   "comment"
    t.integer  "user_id"
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
    t.string   "first_name"
    t.string   "last_name"
    t.string   "gender"
    t.integer  "age"
    t.string   "location"
    t.integer  "age_of_kids"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

end
