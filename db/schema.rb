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

ActiveRecord::Schema.define(version: 20150625053618) do

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

  create_table "m_take_off_types", force: :cascade do |t|
    t.integer  "take_off_type_id"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
    t.string   "take_off_type"
  end

  create_table "m_user_grants", force: :cascade do |t|
    t.integer  "grant_id"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
    t.boolean  "report_rd"
    t.boolean  "report_rw"
    t.boolean  "management_rd"
    t.string   "management_rw"
    t.string   "system_rd"
    t.string   "system_rw"
  end

  create_table "m_user_types", force: :cascade do |t|
    t.integer  "user_type_id"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
    t.string   "user_type"
    t.integer  "grant_id"
  end

  create_table "samples", force: :cascade do |t|
    t.string   "name"
    t.date     "sales_date"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "t_daily_reports", force: :cascade do |t|
    t.integer  "daily_id"
    t.datetime "created_at",           null: false
    t.datetime "updated_at",           null: false
    t.integer  "history_id"
    t.integer  "user_id"
    t.integer  "monthly_id"
    t.date     "date"
    t.string   "day_of_week"
    t.time     "arrive_time"
    t.time     "leave_time"
    t.time     "predetermined_time"
    t.time     "shift_work"
    t.time     "shift_work_mid"
    t.integer  "take_off_type_id"
    t.time     "overtime_work"
    t.time     "overtime_work_mid"
    t.time     "use_substitute"
    t.time     "use_compensatory"
    t.time     "get_substitute"
    t.time     "get_substitute_mid"
    t.time     "get_compensatory"
    t.string   "get_compensatory_mid"
    t.time     "all_overtime"
    t.time     "take_off"
    t.text     "comment"
  end

  create_table "t_monthly_reports", force: :cascade do |t|
    t.integer  "monthly_id"
    t.datetime "created_at",              null: false
    t.datetime "updated_at",              null: false
    t.integer  "user_id"
    t.integer  "year_id"
    t.integer  "month"
    t.time     "total_work_time"
    t.time     "total_used_substitute"
    t.time     "total_used_compensatory"
  end

  create_table "t_users", force: :cascade do |t|
    t.integer  "user_id"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
    t.integer  "user_type_id"
    t.string   "user_name"
    t.string   "user_name_kana"
    t.string   "email"
    t.string   "phone"
    t.text     "location"
  end

  create_table "t_yearly_reports", force: :cascade do |t|
    t.integer  "yearly_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "user_id"
    t.integer  "year"
  end

  create_table "user_authorities", force: :cascade do |t|
    t.integer  "user_id"
    t.boolean  "reporting"
    t.boolean  "management"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "user_types", force: :cascade do |t|
    t.string   "user_type"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "name"
    t.string   "name_kana"
    t.string   "email"
    t.string   "phone"
    t.text     "address"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
