def greet(name = "my friend")
  "Hello, #{name}! Good to cya!"
end

puts greet
puts greet("Carol")

phrase = %w[amazing is ruby that know you did]
puts phrase.reverse.join(" ").capitalize