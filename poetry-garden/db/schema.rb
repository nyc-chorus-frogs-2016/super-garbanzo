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

ActiveRecord::Schema.define(version: 20160210162653) do

  create_table "authors", force: :cascade do |t|
    t.integer  "user_id"
    t.string   "name",          null: false
    t.integer  "year_of_birth"
    t.text     "bio"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  add_index "authors", ["name"], name: "index_authors_on_name"

  create_table "favorited_authors", force: :cascade do |t|
    t.integer "author_id"
    t.integer "user_id"
  end

  create_table "favorited_poems", force: :cascade do |t|
    t.integer "poem_id"
    t.integer "user_id"
  end

  create_table "poems", force: :cascade do |t|
    t.string  "author_id",    null: false
    t.text    "lines",        null: false
    t.integer "year"
    t.string  "title"
    t.integer "submitter_id"
  end

  add_index "poems", ["title"], name: "index_poems_on_title"

  create_table "users", force: :cascade do |t|
    t.string   "username",        null: false
    t.string   "password_digest", null: false
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

end
