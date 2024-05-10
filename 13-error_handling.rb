##############################
#
#     Sergio Belenkoff
#     May,2024
#
#############################
=begin
a = "test"
b = 3

begin
    a + b
rescue
  puts "\n[!]Could not add a (#{a.class}) variable and a (#{b.class}) variable!"
else
  puts "a + b = #{a + b}"
end


###################################################

while 1
  puts 'Enter a number (empty to exit)>> '
  input = Kernel.gets.chomp
  break if input.length == 0

  begin
    num = input.match(/\d+/)[0]
    puts "#{num} + 1 is: #{num.to_i+ 1}"
  rescue
    puts 'Erroneous input! Try again...'
  end
end
=end

('A'..'C').each { |i|
  retries = 2
  begin
    puts
    puts "Executing command #{i}..."
    raise "Exception: #{i}"
  rescue  Exception => e
    puts "\tCaught exception: #{e}"
    if retries > 0
      puts "\tRetrying #{retries} more times...\n"
      retries -= 1
      sleep 1
      retry
    end
  end
}