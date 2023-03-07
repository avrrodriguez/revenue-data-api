class RevenuesController < ApplicationController
  def index
    revenues = MiamiRevenue.first
    serialized = MiamiRevenueSerializer.new(revenues).serializable_hash
    render json: serialized.as_json
  end

  def spearman_rank_correlation
    spearman_correlation_coefficient = SpearmanRankCorrelationRequest.new("thirteenth_month", "adopted_budget")
    p spearman_correlation_coefficient.column_name1[0..4]

    render json: { "message": "connected" }
  end

  def with_no_budget
    no_budget = MiamiRevenue.with_no_budget

    render json: no_budget.as_json
  end

  def with_bonus
    with_bonus = MiamiRevenue.with_bonus

    render json: with_bonus.as_json
  end

  def yearly_department_earnings
    earnings = MiamiRevenue.yearly_department_earnings.order("fy")
    # earnings = earnings.select { |earning| earning["total_revenue"] < 1000000 }

    render json: earnings.as_json
  end

  def department_organizations_earnings
    organizations = MiamiRevenue.department_organizations_earnings(params["department"])

    render json: organizations.as_json
  end
end
