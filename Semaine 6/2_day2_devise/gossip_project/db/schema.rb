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

ActiveRecord::Schema.define(version: 20171107160327) do

  create_table "gossips", force: :cascade do |t|
    t.text "content"
    t.string "title"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "mousaillon_id"
    t.integer "number_likes", default: 0
  end

  create_table "gossips_mousaillons", id: false, force: :cascade do |t|
    t.integer "mousaillon_id"
    t.integer "gossip_id"
    t.index ["gossip_id"], name: "index_gossips_mousaillons_on_gossip_id"
    t.index ["mousaillon_id"], name: "index_gossips_mousaillons_on_mousaillon_id"
  end

  create_table "mousaillons", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer "sign_in_count", default: 0, null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string "current_sign_in_ip"
    t.string "last_sign_in_ip"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "name"
    t.string "sign_up_code"
    t.index ["email"], name: "index_mousaillons_on_email", unique: true
    t.index ["reset_password_token"], name: "index_mousaillons_on_reset_password_token", unique: true
  end

end
