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

ActiveRecord::Schema.define(version: 20140506111256) do

  create_table "emp_logins", force: true do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "emp_logins", ["email"], name: "index_emp_logins_on_email", unique: true, using: :btree
  add_index "emp_logins", ["reset_password_token"], name: "index_emp_logins_on_reset_password_token", unique: true, using: :btree

  create_table "emp_masters", force: true do |t|
    t.string   "tcs_id"
    t.string   "fm_no"
    t.string   "name"
    t.string   "address"
    t.string   "mobile"
    t.string   "role"
    t.date     "birthday"
    t.date     "doj"
    t.date     "dor"
    t.integer  "emp_login_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "emp_masters", ["emp_login_id"], name: "index_emp_masters_on_emp_login_id", using: :btree

  create_table "empteches", force: true do |t|
    t.string   "empid"
    t.integer  "techmaster_id"
    t.integer  "emp_login_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "empteches", ["emp_login_id"], name: "index_empteches_on_emp_login_id", using: :btree
  add_index "empteches", ["techmaster_id"], name: "index_empteches_on_techmaster_id", using: :btree

  create_table "forums", force: true do |t|
    t.string   "qid"
    t.string   "question"
    t.string   "forum_type"
    t.integer  "emptech_id"
    t.integer  "emp_login_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "forums", ["emp_login_id"], name: "index_forums_on_emp_login_id", using: :btree
  add_index "forums", ["emptech_id"], name: "index_forums_on_emptech_id", using: :btree

  create_table "leaves", force: true do |t|
    t.date     "fdate"
    t.date     "tdate"
    t.string   "comments"
    t.integer  "emp_login_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "leaves", ["emp_login_id"], name: "index_leaves_on_emp_login_id", using: :btree

  create_table "techmasters", force: true do |t|
    t.string   "tech"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "wfhs", force: true do |t|
    t.date     "fdate"
    t.date     "tdate"
    t.string   "comments"
    t.integer  "emp_login_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "wfhs", ["emp_login_id"], name: "index_wfhs_on_emp_login_id", using: :btree

end
