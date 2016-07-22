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

ActiveRecord::Schema.define(version: 20160715154233) do

  create_table "activities", force: :cascade do |t|
    t.integer  "cprocess_id"
    t.integer  "order"
    t.string   "description"
    t.integer  "role_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.string   "title"
  end

  add_index "activities", ["cprocess_id"], name: "index_activities_on_cprocess_id"
  add_index "activities", ["role_id"], name: "index_activities_on_role_id"

  create_table "areas", force: :cascade do |t|
    t.string   "name"
    t.string   "description"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "audit_process_activities", force: :cascade do |t|
    t.integer  "audit_id"
    t.integer  "cprocess_id"
    t.integer  "activity_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  add_index "audit_process_activities", ["activity_id"], name: "index_audit_process_activities_on_activity_id"
  add_index "audit_process_activities", ["audit_id"], name: "index_audit_process_activities_on_audit_id"
  add_index "audit_process_activities", ["cprocess_id"], name: "index_audit_process_activities_on_cprocess_id"

  create_table "audit_processes", force: :cascade do |t|
    t.integer  "audit_id"
    t.integer  "cprocess_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  add_index "audit_processes", ["audit_id"], name: "index_audit_processes_on_audit_id"
  add_index "audit_processes", ["cprocess_id"], name: "index_audit_processes_on_cprocess_id"

  create_table "audits", force: :cascade do |t|
    t.integer  "project_id"
    t.string   "description"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  add_index "audits", ["project_id"], name: "index_audits_on_project_id"

  create_table "cprocess_activities", force: :cascade do |t|
    t.integer  "cprocess_id"
    t.integer  "activity_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  add_index "cprocess_activities", ["activity_id"], name: "index_cprocess_activities_on_activity_id"
  add_index "cprocess_activities", ["cprocess_id"], name: "index_cprocess_activities_on_cprocess_id"

  create_table "cprocesses", force: :cascade do |t|
    t.string   "name"
    t.string   "purpose"
    t.string   "abbreviation"
    t.integer  "area_id"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  add_index "cprocesses", ["area_id"], name: "index_cprocesses_on_area_id"

  create_table "employees", force: :cascade do |t|
    t.string   "name"
    t.string   "email"
    t.string   "cellphone"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "project_employees", force: :cascade do |t|
    t.integer  "project_id"
    t.integer  "employee_id"
    t.integer  "role_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  add_index "project_employees", ["employee_id"], name: "index_project_employees_on_employee_id"
  add_index "project_employees", ["project_id"], name: "index_project_employees_on_project_id"
  add_index "project_employees", ["role_id"], name: "index_project_employees_on_role_id"

  create_table "projects", force: :cascade do |t|
    t.string   "name"
    t.string   "description"
    t.date     "start_date"
    t.date     "end_date"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "roles", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
