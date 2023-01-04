class RevenueRequest
  def initialize(request)
    @revenue = request.parse(:json)
  end

  def print
    puts @revenue.length
  end

  def to_database
    @revenue.each do |revenue|
      miami_revenue = MiamiRevenue.new(revenue_type: revenue["type"], fy: revenue["fy"], fund_type: revenue["fund_type"], fund_number: revenue["fund_number"], fund_description: revenue["fund_description"], department_function_description: revenue["department_function"], department_description: revenue["department_description"], organization_number: revenue["organization"], organization_description: revenue["organization_description"], object_type: revenue["object"], object_number: revenue["object_category_description"], object_description: revenue["object_description"], oct: revenue["oct"], nov: revenue["nov"], dec: revenue["dec"], jan: revenue["jan"], feb: revenue["feb"], mar: revenue["mar"], apr: revenue["apr"], may: revenue["may"], jun: revenue["jun"], jul: revenue["jul"], aug: revenue["aug"], sep: revenue["sep"], thirteenth_month: revenue["_13th_month"], total: revenue["total"], adopted_budget: revenue["adopted_budget"], amended_budget: revenue["amended_budget"])

      miami_revenue.save
    end
  end
end
