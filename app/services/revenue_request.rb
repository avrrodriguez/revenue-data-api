class RevenueRequest
  def call
    offset = 0
    while true
      request = HTTP.get("https://data.miamigov.com/resource/ub3m-qgg5.json?$order=:id&$offset=#{offset}")
      response = request.parse(:json)

      to_database(response)

      break if response.length < 1000

      offset += 1000
    end
  end

  def to_database(response)
    response.each do |revenue_item|
      miami_revenue = MiamiRevenue.new(revenue_type: revenue_item["type"],
                                       fy: revenue_item["fy"],
                                       fund_type: revenue_item["fund_type"],
                                       fund_number: revenue_item["fund_number"],
                                       fund_description: revenue_item["fund_description"],
                                       department_function_description: revenue_item["department_function"],
                                       department_description: revenue_item["department_description"],
                                       organization_number: revenue_item["organization"],
                                       organization_description: revenue_item["organization_description"],
                                       object_type: revenue_item["object"],
                                       object_number: revenue_item["object_category_description"],
                                       object_description: revenue_item["object_description"],
                                       oct: revenue_item["oct"],
                                       nov: revenue_item["nov"],
                                       dec: revenue_item["dec"],
                                       jan: revenue_item["jan"],
                                       feb: revenue_item["feb"],
                                       mar: revenue_item["mar"],
                                       apr: revenue_item["apr"],
                                       may: revenue_item["may"],
                                       jun: revenue_item["jun"],
                                       jul: revenue_item["jul"],
                                       aug: revenue_item["aug"],
                                       sep: revenue_item["sep"],
                                       thirteenth_month: revenue_item["_13th_month"],
                                       total: revenue_item["total"],
                                       adopted_budget: revenue_item["adopted_budget"],
                                       amended_budget: revenue_item["amended_budget"])

      miami_revenue.save!
    end
  end
end
