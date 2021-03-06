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

ActiveRecord::Schema.define(version: 20140420185903) do

  create_table "games", force: true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "white_id"
    t.integer  "red_id"
    t.integer  "winner_id"
    t.boolean  "active",     default: false
    t.string   "turn",       default: "red"
    t.string   "board",      default: "1,1,1,1,1,1,1,1,1,1,1,1,0,0,0,0,0,0,0,0,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1"
  end

  create_table "moves", force: true do |t|
    t.integer  "game_id"
    t.string   "movetext"
    t.string   "board"
    t.string   "turn"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "moves", ["game_id"], name: "index_moves_on_game_id"

  create_table "users", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "password_digest"
    t.string   "remember_token"
    t.boolean  "admin",           default: false
  end

  add_index "users", ["name"], name: "index_users_on_name", unique: true
  add_index "users", ["remember_token"], name: "index_users_on_remember_token"

end
