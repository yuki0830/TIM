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

ActiveRecord::Schema.define(version: 20150605013045) do

  create_table "data_days", force: :cascade do |t|
    t.integer  "user_id"
    t.date     "day"
    t.string   "which_day"
    t.datetime "in"
    t.datetime "out"
    t.datetime "fixed"
    t.datetime "shift"
    t.datetime "shift_mid"
    t.string   "off_type"
    t.datetime "overtime"
    t.datetime "overtime_mid"
    t.datetime "use_substitute"
    t.datetime "use_transfer"
    t.datetime "substitute"
    t.datetime "substitute_mid"
    t.datetime "transfer"
    t.datetime "transfer_mid"
    t.datetime "overtime_sum"
    t.datetime "absence"
    t.text     "comment"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
  end

  create_table "data_months", force: :cascade do |t|
    t.integer  "user_id"
    t.integer  "month"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "samples", force: :cascade do |t|
    t.string   "name"
    t.date     "sales_date"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.integer  "num"
    t.string   "name"
    t.string   "mail"
    t.string   "post"
    t.string   "work_type"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
