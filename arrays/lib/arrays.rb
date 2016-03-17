class Array
  def my_uniq
    unique = []
    select do |el|
      unique << el unless unique.include?(el)
    end
  end

  def two_sum
    pairs = []
    each_index do |i|
      j = i + 1
      while j < length
        pairs <<  [i, j] if self[i] + self[j] == 0
        j += 1
      end
    end
    pairs
  end

  def my_transpose
    transpose
  end

  def stock_picker
    profit = nil
    profit_period = []
    each_index do |buy_date|
      sell_date = buy_date + 1
      while sell_date < length
        gains = self[sell_date] - self[buy_date]
        if profit.nil? || profit < gains
          profit = gains
          profit_period = [buy_date, sell_date]
        end
        sell_date += 1
      end
    end
    profit_period
  end
end
