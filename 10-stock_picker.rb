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

  # The prices are already sorted from L ro R so we don't compare them
  while left_pointer < right_pointer && result.nil?
    # Lowest price
    left_day_number = prices_list_sorted[left_pointer][0] + 1
    # Highest price
    right_day_number = prices_list_sorted[right_pointer][0] + 1

    if left_day_number < right_day_number && prices_list_sorted[left_pointer][1] != prices_list_sorted[right_pointer][1]
      #  Prices are sorted in the array but the Days Numbers aren't
      #  So, we're getting result only if the DayNumLeft < DayNumRight and the prices are different
      result = [left_day_number, right_day_number]
    else
      # Otherwise we move the RightPointer to the < and keep searching
      right_pointer -= 1

      if right_pointer <= left_pointer
        right_pointer = prices_list_sorted.length - 1
        left_pointer += 1
      end

    end
  end
  result
end


#         *****  void main()  *****
input = [ 3,13,133,310,1311,111 ]
output = stock_picker(input)
p output

#  To-do: rewrite the method with actually prices comparing
#  instead of relying on the sort by price
