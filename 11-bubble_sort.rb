###############################################
#
#   Bubble sort method by Sergio Belenkoff
#   May, 2024
#
##############################################


def bubble_sort(array)
  array_length = array.length
  loop do
    swapped = false
      (array_length - 1).times do |i|
        if array[i] > array[i + 1]
          array[i], array[i + 1] = array[i + 1], array[i]
          swapped = true
        end
      end
    break unless swapped
  end
  array
end
############################################

array = [2, 56, 8, 34, 89, 33, 5556, 1, 77, 900]

puts bubble_sort(array)