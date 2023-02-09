# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema[7.0].define(version: 2023_02_09_211406) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "employee_jobsites", force: :cascade do |t|
    t.bigint "employee_id", null: false
    t.bigint "jobsite_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["employee_id"], name: "index_employee_jobsites_on_employee_id"
    t.index ["jobsite_id"], name: "index_employee_jobsites_on_jobsite_id"
  end

  create_table "employees", force: :cascade do |t|
    t.string "email"
    t.string "password_digest"
    t.string "image"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "first_name"
    t.string "last_name"
    t.boolean "manager", default: false
    t.integer "jobsite_id"
    t.string "address"
    t.string "state"
    t.integer "zip_code"
    t.string "city"
  end

  create_table "jobsites", force: :cascade do |t|
    t.integer "employee_id"
    t.string "location"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "builder"
  end

  create_table "punchins", force: :cascade do |t|
    t.datetime "time_in"
    t.datetime "time_out"
    t.datetime "date"
    t.integer "employee_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "todos", force: :cascade do |t|
    t.string "name"
    t.text "description"
    t.integer "employee_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.boolean "done", default: false
  end

  add_foreign_key "employee_jobsites", "employees"
  add_foreign_key "employee_jobsites", "jobsites"
end
