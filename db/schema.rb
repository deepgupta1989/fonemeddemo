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

ActiveRecord::Schema.define(version: 20150609103648) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "calls", force: true do |t|
    t.string   "callerid"
    t.integer  "patient_id"
    t.string   "calltype"
    t.float    "length"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.datetime "call_received_at"
  end

  add_index "calls", ["patient_id"], name: "index_calls_on_patient_id", using: :btree

  create_table "patients", force: true do |t|
    t.string   "firstname"
    t.string   "lastname"
    t.date     "dob"
    t.string   "gender"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "report_data", force: true do |t|
    t.integer  "report_master_id"
    t.string   "column_name"
    t.string   "column_datatype"
    t.string   "sequence"
    t.string   "column_style"
    t.string   "column_display_name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "report_data", ["report_master_id"], name: "index_report_data_on_report_master_id", using: :btree

  create_table "report_filters", force: true do |t|
    t.integer  "report_master_id"
    t.string   "field_name"
    t.boolean  "mandatory"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "report_filters", ["report_master_id"], name: "index_report_filters_on_report_master_id", using: :btree

  create_table "report_headers", force: true do |t|
    t.integer  "report_master_id"
    t.string   "main_header"
    t.string   "main_header_style"
    t.string   "header1"
    t.string   "header1_style"
    t.string   "header2"
    t.string   "header2_style"
    t.string   "header3"
    t.string   "header3_style"
    t.boolean  "repeat_header"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "table_header_style"
  end

  add_index "report_headers", ["report_master_id"], name: "index_report_headers_on_report_master_id", using: :btree

  create_table "report_masters", force: true do |t|
    t.string   "report_name"
    t.integer  "report_template_master_id"
    t.boolean  "status"
    t.string   "created_by"
    t.string   "updated_by"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "report_masters", ["report_template_master_id"], name: "index_report_masters_on_report_template_master_id", using: :btree

  create_table "report_sqls", force: true do |t|
    t.integer  "report_master_id"
    t.string   "sql_query"
    t.string   "parameter_sequence"
    t.boolean  "status"
    t.string   "created_by"
    t.string   "updated_by"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "report_sqls", ["report_master_id"], name: "index_report_sqls_on_report_master_id", using: :btree

  create_table "report_template_masters", force: true do |t|
    t.string   "template_name"
    t.boolean  "status"
    t.string   "created_by"
    t.string   "updated_by"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "main_header"
    t.string   "main_header_style"
    t.string   "header1"
    t.string   "header1_style"
    t.string   "header2"
    t.string   "header2_style"
    t.string   "header3"
    t.string   "header3_style"
    t.boolean  "repeat_header"
  end

end
