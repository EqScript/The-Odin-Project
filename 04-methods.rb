def greet(name = "my friend")
  "Hello, #{name}! Good to cya!"
end

puts greet
puts greet("Carol")

phrase = %w[amazing is ruby that know you did]
puts phrase.reverse.join(" ").capitalize

def is_between_minus1_100 (number = 88)
  number.between?(-1, 100)
end

if is_between_minus1_100()
  puts "Yes!"
else
  puts "No!"
end
