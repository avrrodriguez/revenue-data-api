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

ActiveRecord::Schema[7.0].define(version: 2023_01_04_193537) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "miami_revenues", force: :cascade do |t|
    t.integer "unique_key"
    t.string "revenue_type"
    t.string "fy"
    t.string "fund_type"
    t.string "fund_number"
    t.string "fund_description"
    t.string "department_function_description"
    t.string "department_description"
    t.string "organization_number"
    t.string "organization_description"
    t.string "object_type"
    t.string "object_number"
    t.string "object_description"
    t.integer "oct"
    t.integer "nov"
    t.integer "dec"
    t.integer "jan"
    t.integer "feb"
    t.integer "mar"
    t.integer "apr"
    t.integer "may"
    t.integer "jun"
    t.integer "jul"
    t.integer "aug"
    t.integer "sep"
    t.integer "thirteenth_month"
    t.integer "total"
    t.integer "encumbrance"
    t.integer "adopted_budget"
    t.integer "amended_budget"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
