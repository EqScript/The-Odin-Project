friends = %w[Sharon Leo Leila Brian Arun]
invited_list = []
divider = :——————————————————————————————————————————————————

# for friend in friends do
#   if friend != :Brian
#     invited_list.push(friend)
#   end
# end

# invited_list =  friends.select { |friend| friend != :Brian}
invited_list = friends.reject{ |friend| friend == :Brian }

p invited_list

friends.each { |friend| puts "Hey, #{friend}!" }
puts divider

my_array = []

1000.times do |i|
  my_array[i] = i
end

sum = 0
my_array.each do |i|
  sum += i
end
p my_array
p sum
puts divider


my_hash = { one: 1, two: 2, three: 3, four: 4 }

my_hash.each { |key, value| puts "#{key}: #{value}" }

my_hash.each { |pair| puts "Pair is: #{pair}" }
puts divider

friends.each { |friend| puts friend.upcase }

yelling_at_friends = []

friends.each { |friend| yelling_at_friends << friend.upcase }

p yelling_at_friends
puts divider

string_arr = %w[one two three oops]
p string_arr
string_arr.map! { |entry| entry.capitalize }
string_arr.each { |element| puts element }
puts divider

