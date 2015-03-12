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

ActiveRecord::Schema.define(version: 20150312085623) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "knowledge_areas", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "pmbok_docs", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "process_groups", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "project_documents", force: :cascade do |t|
    t.integer  "pmbok_doc_id"
    t.integer  "project_id"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
    t.string   "docname"
  end

  add_index "project_documents", ["pmbok_doc_id"], name: "index_project_documents_on_pmbok_doc_id", using: :btree
  add_index "project_documents", ["project_id"], name: "index_project_documents_on_project_id", using: :btree

  create_table "project_roles", force: :cascade do |t|
    t.string   "rolename"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "project_teams", force: :cascade do |t|
    t.integer  "user_id"
    t.integer  "project_id"
    t.integer  "project_role_id"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  add_index "project_teams", ["project_id"], name: "index_project_teams_on_project_id", using: :btree
  add_index "project_teams", ["project_role_id"], name: "index_project_teams_on_project_role_id", using: :btree
  add_index "project_teams", ["user_id"], name: "index_project_teams_on_user_id", using: :btree

  create_table "projects", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "subprocess_groups", force: :cascade do |t|
    t.string   "name"
    t.string   "code"
    t.integer  "process_group_id"
    t.integer  "knowledge_area_id"
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
  end

  add_index "subprocess_groups", ["knowledge_area_id"], name: "index_subprocess_groups_on_knowledge_area_id", using: :btree
  add_index "subprocess_groups", ["process_group_id"], name: "index_subprocess_groups_on_process_group_id", using: :btree

  create_table "users", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "project_documents", "pmbok_docs"
  add_foreign_key "project_documents", "projects"
  add_foreign_key "project_teams", "project_roles"
  add_foreign_key "project_teams", "projects"
  add_foreign_key "project_teams", "users"
  add_foreign_key "subprocess_groups", "knowledge_areas"
  add_foreign_key "subprocess_groups", "process_groups"
end
