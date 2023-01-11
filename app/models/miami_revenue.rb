class MiamiRevenue < ApplicationRecord
  DEPARTMENT_DESCRIPTIONS = { BUILDING: "Building" }.freeze
  scope :no_budget, -> { where("adopted_budget = 0") }
  scope :building_department, -> { where("department_description = ?", DEPARTMENT_DESCRIPTIONS[:BUILDING]) }
  scope :yearly_department_earnings, -> { select("department_description, fy, sum(total) as total_revenue").group("department_description, fy") }
end
