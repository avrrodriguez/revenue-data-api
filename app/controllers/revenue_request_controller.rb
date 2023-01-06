class RevenueRequestController < ApplicationController
  def request
    request = HTTP.get("https://data.miamigov.com/resource/ub3m-qgg5.json")

    new_request = RevenueRequest.new(request)
    new_request.to_database
  end
end
