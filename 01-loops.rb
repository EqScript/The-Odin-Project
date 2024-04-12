=begin
var = 13.2.to_int
puts var.even?
print "Hello, "; print "World!"


puts "What is your name?\n"
word2 = gets.chomp
puts "\nHello, #{word2}!"

=end

AMOUNT_OF_NUMBERS = 10
numbers = []
odd_count = 0
even_count = 0

AMOUNT_OF_NUMBERS.times do |i|
  print "Input number #" + (i + 1).to_s + ": "
  input = gets.chomp

  until input.match?(/^-?\d+$/)
    puts "Invalid Input. Please, enter a number!"
    print "Input number ##{(i + 1)}:"

    input = gets.chomp
  end

  number = input.to_i
  numbers << number
  number.even? ? even_count += 1 : odd_count += 1
end

puts "You have entered " + even_count.to_s + " even numbers and " + odd_count.to_s + " odd numbers!"


