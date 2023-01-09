class MiamiRevenue < ApplicationRecord
  scope :no_budget, -> { where("adopted_budget = 0") }
end
