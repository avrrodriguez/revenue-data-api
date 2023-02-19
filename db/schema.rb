# 13th month: The 13th month pay is a form of monetary benefit equivalent to the monthly basic compensation received by an employee, computed pro-data according to the number of months within a year that the employee has rendered service to the employer.
# encumbrance: (a) An anticipated expenditure, evidenced by a contract or purchase order, or determined by administrative action. (b) Commitment. (c) Any lien or other liability attaching to real property.
# Adopted budget: official budget adopted at the beginning of the fiscal year
# Amended Budget: changes in budget that reflect the expenditure of the year.

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
