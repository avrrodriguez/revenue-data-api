class MiamiRevenueSerializer
  include JSONAPI::Serializer
  attributes :id, :fy, :fund_type, :fund_description, :department_function_description, :department_description, :organization_description, :total

  attribute :budget_change do |object|
    object.adopted_budget - object.amended_budget
  end
end
