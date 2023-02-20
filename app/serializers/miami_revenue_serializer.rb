class MiamiRevenueSerializer
  include JSONAPI::Serializer
  attributes :fy, :fund_type, :fund_description, :department_function_description, :department_description, :organization_description, :total, :budget_change

  def budget_change
    puts amended_budget
  end
end
