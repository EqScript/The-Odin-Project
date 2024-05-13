class Lion
  def initialize(name)
    @name = name
  end

  def return_lions_name
    @name
  end
end

simba = Lion.new("Simba")
str = "#{simba.return_lions_name} - is the best lion ever!"
puts str


class Celsius
  def initialize(temp)
    @temp_celsius = temp.to_i
  end

  def get_celsius
    @temp_celsius
  end

  def get_fahrenheit
    (@temp_celsius * 1.8 + 32).round
  end
end


temperature = Celsius.new(25)
puts "Temperature is #{temperature.get_celsius}C or #{temperature.get_fahrenheit}F degrees!"
