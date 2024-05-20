DIVIDER = "\n~~~~~~~~~~~~~~~~~~~~~~~"

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


class Dog
  def initialize(name)
    @name = name
  end

  def bark()
    return "Ruff-Ruff!"
  end
end

puts DIVIDER
puppy = Dog.new("Puppy")
puts puppy.bark()


class Insect
  def initialize(age_in_days)
    @age_in_days = age_in_days
  end

  def age_in_years
    @age_in_days / 365.25.to_i
  end
end

puts DIVIDER
ant = Insect.new(1200)
puts ant.age_in_years

class Lamp
  def self.about_me
    return "We brighten people's lives"
  end
end

puts DIVIDER
puts Lamp.about_me

class WaterBottle
  def initialize(size)
    @size = size
  end

  def get_size
    return @size
  end
end

puts DIVIDER
water_bottle = WaterBottle.new(25)
puts water_bottle.get_size

class Person
  def initialize(age = 18)
    @age = age
  end
  def set_age(age)
    @age = age
  end

  def self.get_age
    @age
  end
  def get_age
    @age
  end
end

puts DIVIDER
kirk = Person.new
puts kirk.inspect
kirk.set_age(23)
puts "Age set to: #{kirk.get_age}"


###########################################

module MathHelper
  def multiply_by_two(num)
    num *= 2
  end
end

class HomeWork
  include MathHelper
end

puts DIVIDER
home_work = HomeWork.new
puts home_work.multiply_by_two(3)

class BaseballPlayer
  def initialize(hits = 12, walks = 14, at_bats = 4)
    @hits = hits
    @walks = walks
    @at_bats = at_bats
  end

  def batting_average
    @average = (@hits / @at_bats).to_f
  end

  def on_base_percentage
    @percentage = ((@hits + @walks) / @at_bats).to_f
  end
end

puts DIVIDER
johnson = BaseballPlayer.new(120, 220, 70 )
puts "Batting average: #{johnson.batting_average}"
puts "On base: #{johnson.on_base_percentage}%"

class Person2
  def initialize(first_name, last_name)
    @first_name = first_name
    @last_name = last_name
  end

  def get_first_name
    @first_name
  end

  def get_last_name
    @last_name
  end

  def get_full_name
    "#{@first_name} #{@last_name}"
  end
end

puts DIVIDER
john_doe = Person2.new("John", "Doe")
puts john_doe.get_full_name
puts john_doe.get_first_name

module MathHelpers
  def exponent(base, power)
    base ** power
  end
end

class Calculator
  include MathHelpers
  def square_root(base)
    exponent(base, 0.5)
  end
end

puts DIVIDER
calc = Calculator.new
puts calc.exponent(5,2)
puts calc.square_root(99)

