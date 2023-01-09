class RevenuesController < ApplicationController
  def index
    revenues = MiamiRevenue.all
    render json: revenues.as_json
  end
end
