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

ActiveRecord::Schema.define(version: 20160306033327) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "classrooms", force: :cascade do |t|
    t.string   "teacher_name"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  create_table "codes", force: :cascade do |t|
    t.integer  "student_id"
    t.string   "random_key"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "codes", ["student_id"], name: "index_codes_on_student_id", using: :btree

  create_table "students", force: :cascade do |t|
    t.string   "email"
    t.string   "password"
    t.integer  "classroom_id"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  add_index "students", ["classroom_id"], name: "index_students_on_classroom_id", using: :btree

  add_foreign_key "codes", "students"
  add_foreign_key "students", "classrooms"
end
