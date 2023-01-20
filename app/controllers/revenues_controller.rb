class RevenuesController < ApplicationController
  def index
    revenues = MiamiRevenue.all
    render json: revenues.as_json
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

    render json: earnings.as_json
  end

  def department_organizations_earnings
    organizations = MiamiRevenue.department_organizations_earnings(params["department"])

    render json: organizations.as_json
  end
end
