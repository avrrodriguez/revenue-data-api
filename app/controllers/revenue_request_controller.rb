class RevenueRequestController < ApplicationController
  def index
    render json: { "message": "works" }
  end
end
