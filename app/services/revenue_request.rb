class RevenueRequest
  def initialize(request)
    @revenue = request.parse(:json)
  end

  def print
    puts @revenue.length
  end
end
