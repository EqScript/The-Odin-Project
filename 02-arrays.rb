num_array = [0, 1, 2, 3, 4, 5]
# str_array = ["This_is", "is", "a string", "array!", "is", "is_it?"]
# str_array2 = ["is"]

=begin
puts num_array.shift(1)
print num_array

print str_array
=end

# print str_array - str_array2

until num_array.empty? do
  puts num_array.shift(1)
  msg = num_array.length > 0? "There are still elements!" : "Nobody there anymore!"
  puts msg
end

