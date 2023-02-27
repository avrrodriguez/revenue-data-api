class MiamiRevenueSerializer
  include JSONAPI::Serializer
  attributes :id, :fy, :fund_type, :fund_description, :department_function_description, :department_description, :organization_description, :total

  attribute :budget_change do
    puts "here"
    puts params
  end
end
