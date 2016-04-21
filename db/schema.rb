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

ActiveRecord::Schema.define(version: 20160419062054) do

  create_table "events", force: :cascade do |t|
    t.string   "title"
    t.text     "description"
    t.datetime "date_i"
    t.datetime "date_f"
    t.time     "hour_i"
    t.time     "hour_f"
    t.string   "name_place"
    t.string   "address"
    t.string   "img"
    t.boolean  "private"
    t.integer  "n_confirm"
    t.integer  "capacity"
    t.boolean  "need_partner"
    t.text     "des_partner"
    t.integer  "user_id"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  create_table "feedbacks", force: :cascade do |t|
    t.integer  "user_id"
    t.integer  "event_id"
    t.integer  "score"
    t.string   "comment"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "inviteds", force: :cascade do |t|
    t.integer  "event_id"
    t.integer  "user_id"
    t.string   "correo"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "partner_events", force: :cascade do |t|
    t.integer  "event_id"
    t.integer  "user_id"
    t.text     "description"
    t.integer  "state"
    t.string   "type_partners"
    t.string   "correo"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  create_table "relationships", force: :cascade do |t|
    t.integer  "follower_id"
    t.integer  "followed_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  add_index "relationships", ["followed_id"], name: "index_relationships_on_followed_id"
  add_index "relationships", ["follower_id", "followed_id"], name: "index_relationships_on_follower_id_and_followed_id", unique: true
  add_index "relationships", ["follower_id"], name: "index_relationships_on_follower_id"

  create_table "simple_hashtag_hashtaggings", force: :cascade do |t|
    t.integer "hashtag_id"
    t.integer "hashtaggable_id"
    t.string  "hashtaggable_type"
  end

  add_index "simple_hashtag_hashtaggings", ["hashtag_id"], name: "index_simple_hashtag_hashtaggings_on_hashtag_id"
  add_index "simple_hashtag_hashtaggings", ["hashtaggable_id", "hashtaggable_type"], name: "index_hashtaggings_hashtaggable_id_hashtaggable_type"

  create_table "simple_hashtag_hashtags", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "simple_hashtag_hashtags", ["name"], name: "index_simple_hashtag_hashtags_on_name"

  create_table "user_events", force: :cascade do |t|
    t.integer  "user_id"
    t.integer  "event_id"
    t.integer  "state"
    t.boolean  "like"
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
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.string   "confirmation_token"
    t.datetime "confirmed_at"
    t.datetime "confirmation_sent_at"
    t.string   "unconfirmed_email"
    t.integer  "type_user"
    t.string   "name"
    t.string   "last_name"
    t.string   "description"
    t.string   "img"
    t.string   "username"
    t.string   "phone"
    t.string   "mobile"
    t.string   "address"
    t.string   "company"
    t.string   "type_company"
    t.string   "latitude"
    t.string   "longitude"
    t.string   "facebook"
    t.string   "twitter"
    t.string   "instagram"
    t.string   "youtube"
    t.string   "linkedin"
    t.string   "pinterest"
    t.string   "tumblr"
    t.string   "google_plus"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true

end
