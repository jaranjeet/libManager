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

ActiveRecord::Schema.define(version: 2018_05_06_073016) do

  create_table "books", force: :cascade do |t|
    t.string "name"
    t.string "author"
    t.integer "pages"
    t.float "price"
    t.string "subject"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.boolean "isBorrowed", default: false
  end

  create_table "borrowings", force: :cascade do |t|
    t.datetime "issued_on"
    t.integer "Student_id"
    t.integer "Book_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.boolean "isReturned", default: false
    t.index ["Book_id"], name: "index_borrowings_on_Book_id"
    t.index ["Student_id"], name: "index_borrowings_on_Student_id"
  end

  create_table "students", force: :cascade do |t|
    t.integer "roll_no"
    t.string "name"
    t.string "class_"
    t.string "phone"
    t.string "email"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
