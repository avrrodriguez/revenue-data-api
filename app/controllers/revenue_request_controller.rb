class RevenueRequestController < ApplicationController
  def index
    request = HTTP.get("https://data.miamigov.com/resource/ub3m-qgg5.json")

    new_request = RevenueRequest.new(request)
    new_request.print

    render json: request.parse(:json)
  end
end
