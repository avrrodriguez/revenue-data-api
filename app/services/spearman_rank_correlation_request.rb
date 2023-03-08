class SpearmanRankCorrelationRequest
  attr_reader :column1_data, :column2_data

  def initialize(column1_name, column2_name)
    @column1_data = get_data_from_column_as_array(column1_name)
    @column2_data = get_data_from_column_as_array(column2_name)

    initialize_and_fill_column_rank_arrays()
  end

  def get_data_from_column_as_array(column_name)
    MiamiRevenue.pluck(column_name.to_sym)
  end

  def sort_array_desc_order(column_data)
    column_data.sort().reverse
  end

  def initialize_and_fill_column_rank_arrays
    @column1_data_ranks = Array.new(@column1_data.length)
    @column2_data_ranks = Array.new(@column2_data.length)

    rank_columns()

    determine_rank_distance()
    p @rank_distance[0..4]
  end

  def rank_columns
    # problem, setting nil to 0 when 0 due to multiple 0's in both arrays but distance is not 0 for them
    sort_array_desc_order(@column1_data).each_with_index do |number, index|
      @column1_data_ranks[@column1_data.index(number)] = index + 1
    end

    sort_array_desc_order(@column2_data).each_with_index do |number, index|
      @column2_data_ranks[@column2_data.index(number)] = index + 1
    end

    @column1_data_ranks = @column1_data_ranks.map do |number|
      if number == nil
        number = 0
      else
        number = number
      end
    end

    @column2_data_ranks = @column2_data_ranks.map do |number|
      if number == nil
        number = 0
      else
        number = number
      end
    end
  end

  def determine_rank_distance
    @rank_distance = []

    for num in 0..(@column1_data_ranks.length - 1)
      @rank_distance << (@column1_data_ranks[num] - @column2_data_ranks[num]).abs
    end
  end

  def spearman_rank_correlation
    "hello"
  end
end
