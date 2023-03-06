class SpearmanRankCorrelationRequest
  def initialize(column_name1, column_name2)
    @column_name1 = get_data_from_column_as_array(column_name1)
    @column_name2 = get_data_from_column_as_array(column_name2)
    p @column_name1[0..3], @column_name2[0..3]
    p sort_array_desc_order(@column_name1)[0..3]
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
