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

ActiveRecord::Schema.define(version: 20151103164306) do

  create_table "authors", force: :cascade do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.string   "genre"
    t.date     "dob"
    t.date     "dod"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "book_authors", force: :cascade do |t|
    t.integer  "author_id"
    t.integer  "book_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "book_authors", ["author_id"], name: "index_book_authors_on_author_id"
  add_index "book_authors", ["book_id"], name: "index_book_authors_on_book_id"

  create_table "books", force: :cascade do |t|
    t.string   "title"
    t.decimal  "price"
    t.date     "publish_date"
    t.integer  "category_id"
    t.string   "isbn"
    t.integer  "publisher_id"
    t.text     "decription"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  add_index "books", ["category_id"], name: "index_books_on_category_id"
  add_index "books", ["publisher_id"], name: "index_books_on_publisher_id"

  create_table "categories", force: :cascade do |t|
    t.string   "title"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "publishers", force: :cascade do |t|
    t.string   "title"
    t.string   "city"
    t.string   "state"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end