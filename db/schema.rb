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

ActiveRecord::Schema.define(version: 20150713212542) do

  create_table "business_partners", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "events", force: :cascade do |t|
    t.string   "title"
    t.text     "description"
    t.datetime "start_time"
    t.float    "time_spent"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "hackers", force: :cascade do |t|
    t.string   "name"
    t.datetime "datefrom"
    t.datetime "dateto"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "projects", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at",          null: false
    t.datetime "updated_at",          null: false
    t.integer  "business_partner_id"
  end

  add_index "projects", ["business_partner_id"], name: "index_projects_on_business_partner_id"

  create_table "sprints", force: :cascade do |t|
    t.string   "name"
    t.string   "active"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
    t.integer  "hacker_id"
    t.integer  "project_id"
    t.string   "sprintcategory"
  end

  add_index "sprints", ["hacker_id"], name: "index_sprints_on_hacker_id"
  add_index "sprints", ["project_id"], name: "index_sprints_on_project_id"

  create_table "works", force: :cascade do |t|
    t.datetime "date"
    t.float    "time"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "sprint_id"
    t.integer  "hacker_id"
  end

  add_index "works", ["hacker_id"], name: "index_works_on_hacker_id"
  add_index "works", ["sprint_id"], name: "index_works_on_sprint_id"

end
