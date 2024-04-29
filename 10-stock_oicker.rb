def array_to_2d_array(original_arr)
  array_2d = []
  #   array_2d = [day][value]
  original_arr.each_with_index do |value, day|
    array_2d << [day, value]
  end
  array_2d
end

def stock_picker (prices_list)
  #  Saving original Day-Price pairs and sorting them by the Price Value
  #     [day x]        [day y]        [day z]
  #  [lower price] [higher price] [highest price]
  prices_list_sorted = array_to_2d_array(prices_list).sort_by { |_day, value| value }

  left_pointer = 0
  right_pointer = prices_list_sorted.length - 1
  result = nil

  while left_pointer < right_pointer && result.nil?
    left_day_number = prices_list_sorted[left_pointer][0] + 1
    right_day_number = prices_list_sorted[right_pointer][0] + 1

    if left_day_number < right_day_number
      #  Prices are sorted in the array but the Days Numbers aren't
      #  So, we're getting result only if the DayNumLeft < DayNumRight
      result = [left_day_number, right_day_number]
    else
      # Otherwise we move the RightPointer to the < and keep searching
      right_pointer -= 1
      next if right_pointer > left_pointer
    end

    left_pointer += 1
  end
  result
end


#         *****  void main()  *****
input = [78220, 2, 10, 4, 10, 10, 33, 10019, 700, 13, 8950]
output = stock_picker(input)
p output
