class MiamiRevenueSerializer
  include JSONAPI::Serializer
  attributes :fy, :fund_type, :fund_description, :department_function_description, :department_description, :organization_description, :total

  attribute :budget_alcatraz do
    "hello"
  end
end
