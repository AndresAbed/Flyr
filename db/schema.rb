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

ActiveRecord::Schema.define(version: 20150319134616) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "banners", force: :cascade do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "image1_file_name",    limit: 100
    t.string   "image1_content_type", limit: 100
    t.integer  "image1_file_size"
    t.datetime "image1_updated_at"
    t.string   "image2_file_name",    limit: 100
    t.string   "image2_content_type", limit: 100
    t.integer  "image2_file_size"
    t.datetime "image2_updated_at"
    t.string   "image3_file_name",    limit: 100
    t.string   "image3_content_type", limit: 100
    t.integer  "image3_file_size"
    t.datetime "image3_updated_at"
    t.string   "image4_file_name",    limit: 100
    t.string   "image4_content_type", limit: 100
    t.integer  "image4_file_size"
    t.datetime "image4_updated_at"
  end

  create_table "clubevents", force: :cascade do |t|
    t.string   "name"
    t.date     "date"
    t.time     "hour"
    t.string   "age"
    t.text     "description"
    t.string   "slug"
    t.float    "latitude"
    t.float    "longitude"
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
    t.string   "image_file_name"
    t.string   "image_content_type"
    t.integer  "image_file_size"
    t.datetime "image_updated_at"
    t.integer  "club_id"
    t.string   "address"
    t.string   "club_logo_file_name"
    t.string   "club_logo_content_type"
    t.integer  "club_logo_file_size"
    t.datetime "club_logo_updated_at"
  end

  add_index "clubevents", ["slug"], name: "index_clubevents_on_slug", using: :btree

  create_table "clublists", force: :cascade do |t|
    t.string   "list_name"
    t.integer  "user_id"
    t.integer  "clubevent_id"
    t.datetime "created_at",              null: false
    t.datetime "updated_at",              null: false
    t.string   "list_image_file_name"
    t.string   "list_image_content_type"
    t.integer  "list_image_file_size"
    t.datetime "list_image_updated_at"
    t.integer  "club_id"
  end

  create_table "clublistusers", force: :cascade do |t|
    t.string   "username"
    t.integer  "clublist_id"
    t.integer  "clubevent_id"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
    t.integer  "user_id"
  end

  create_table "clubs", force: :cascade do |t|
    t.string   "name",                     limit: 50
    t.string   "address",                  limit: 255
    t.float    "latitude"
    t.float    "longitude"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.text     "description"
    t.string   "slug",                     limit: 50
    t.string   "logo_file_name",           limit: 50
    t.string   "logo_content_type",        limit: 50
    t.integer  "logo_file_size"
    t.datetime "logo_updated_at"
    t.string   "cover_image_file_name",    limit: 50
    t.string   "cover_image_content_type", limit: 50
    t.integer  "cover_image_file_size"
    t.datetime "cover_image_updated_at"
    t.string   "facebook",                 limit: 100
    t.string   "twitter",                  limit: 100
    t.string   "instagram",                limit: 100
    t.string   "youtube",                  limit: 100
    t.string   "googleplus",               limit: 100
  end

  add_index "clubs", ["slug"], name: "index_clubs_on_slug", using: :btree

  create_table "events", force: :cascade do |t|
    t.string   "name",                    limit: 50
    t.string   "address",                 limit: 255
    t.date     "date"
    t.time     "hour"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "age",                     limit: 5
    t.text     "description"
    t.string   "image_file_name",         limit: 100
    t.string   "image_content_type",      limit: 100
    t.integer  "image_file_size"
    t.datetime "image_updated_at"
    t.string   "event_logo_file_name",    limit: 100
    t.string   "event_logo_content_type", limit: 100
    t.integer  "event_logo_file_size"
    t.datetime "event_logo_updated_at"
    t.string   "slug",                    limit: 50
    t.float    "latitude"
    t.float    "longitude"
  end

  add_index "events", ["slug"], name: "index_events_on_slug", using: :btree

  create_table "features", force: :cascade do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "club_id"
    t.boolean  "wifi"
    t.boolean  "smoking_area"
    t.boolean  "security"
    t.boolean  "photos"
    t.boolean  "birthdays"
    t.boolean  "credit_cards"
    t.boolean  "food"
    t.boolean  "drinks"
    t.boolean  "gifts"
    t.boolean  "first_aid"
    t.boolean  "parking"
    t.string   "text"
  end

  create_table "lists", force: :cascade do |t|
    t.string   "list_name",               limit: 50
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "list_image_file_name",    limit: 100
    t.string   "list_image_content_type", limit: 100
    t.integer  "list_image_file_size"
    t.datetime "list_image_updated_at"
    t.integer  "event_id"
    t.integer  "user_id"
  end

  create_table "listusers", force: :cascade do |t|
    t.string   "username",   limit: 50
    t.integer  "list_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "event_id"
    t.integer  "user_id"
  end

  create_table "musics", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "club_id"
  end

  create_table "users", force: :cascade do |t|
    t.string   "email",                    limit: 100, default: "", null: false
    t.string   "encrypted_password",       limit: 100, default: "", null: false
    t.string   "reset_password_token",     limit: 100
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",                        default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet     "current_sign_in_ip"
    t.inet     "last_sign_in_ip"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "provider",                 limit: 50
    t.string   "uid",                      limit: 100
    t.string   "oauth_token",              limit: 255
    t.string   "image",                    limit: 255
    t.string   "username",                 limit: 50
    t.string   "confirmation_token",       limit: 255
    t.datetime "confirmed_at"
    t.datetime "confirmation_sent_at"
    t.string   "unconfirmed_email",        limit: 50
    t.string   "profile_img_file_name",    limit: 100
    t.string   "profile_img_content_type", limit: 100
    t.integer  "profile_img_file_size"
    t.datetime "profile_img_updated_at"
    t.string   "name",                     limit: 50
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

end
