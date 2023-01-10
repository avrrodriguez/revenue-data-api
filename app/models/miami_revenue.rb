class MiamiRevenue < ApplicationRecord
  DEPARTMENT_DESCRIPTIONS = { BUILDING: "Building" }.freeze
  scope :no_budget, -> { where("adopted_budget = 0") }
  scope :building_department, -> { where("department_description = ?", DEPARTMENT_DESCRIPTIONS[:BUILDING]) }
end
