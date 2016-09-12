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

ActiveRecord::Schema.define(version: 20151208010617) do

  create_table "guides", force: :cascade do |t|
    t.string   "title"
    t.string   "fname"
    t.integer  "user_id"
    t.integer  "vgame_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "guides", ["user_id"], name: "index_guides_on_user_id"
  add_index "guides", ["vgame_id"], name: "index_guides_on_vgame_id"

  create_table "platforms", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "posts", force: :cascade do |t|
    t.text     "message"
    t.integer  "user_id"
    t.integer  "topic_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "posts", ["topic_id"], name: "index_posts_on_topic_id"
  add_index "posts", ["user_id"], name: "index_posts_on_user_id"

  create_table "reviews", force: :cascade do |t|
    t.string   "title"
    t.text     "reviewtext"
    t.integer  "rating"
    t.integer  "user_id"
    t.integer  "vgame_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "reviews", ["user_id"], name: "index_reviews_on_user_id"
  add_index "reviews", ["vgame_id"], name: "index_reviews_on_vgame_id"

  create_table "topics", force: :cascade do |t|
    t.string   "title"
    t.integer  "user_id"
    t.integer  "vgame_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "topics", ["user_id"], name: "index_topics_on_user_id"
  add_index "topics", ["vgame_id"], name: "index_topics_on_vgame_id"

  create_table "users", force: :cascade do |t|
    t.string   "email",                  default: "",    null: false
    t.string   "encrypted_password",     default: "",    null: false
    t.string   "name",                   default: "",    null: false
    t.boolean  "admin",                  default: false, null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,     null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at",                             null: false
    t.datetime "updated_at",                             null: false
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true

  create_table "vgame_platforms", force: :cascade do |t|
    t.integer  "vgame_id"
    t.integer  "platform_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  add_index "vgame_platforms", ["platform_id"], name: "index_vgame_platforms_on_platform_id"
  add_index "vgame_platforms", ["vgame_id"], name: "index_vgame_platforms_on_vgame_id"

  create_table "vgames", force: :cascade do |t|
    t.string   "fname",       default: "default.jpg", null: false
    t.string   "name"
    t.text     "description"
    t.string   "genre"
    t.date     "release"
    t.string   "developer"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
  end

end
