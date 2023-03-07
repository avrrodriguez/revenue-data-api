class SpearmanRankCorrelationRequest
  attr_reader :column1_data, :column2_data

  def initialize(column_name1, column_name2)
    @column1_data = get_data_from_column_as_array(column_name1)
    @column2_data = get_data_from_column_as_array(column_name2)
  end

  def get_data_from_column_as_array(column_name)
    MiamiRevenue.pluck(column_name.to_sym)
  end

  def sort_array_desc_order(column_name)
    column_name.sort().reverse
  end

  def spearman_rank_correlation
    "hello"
  end
end
