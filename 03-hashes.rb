my_hash = {
  "key1" => "ahoy!",
  "key2" => "hey there!",
  "key3" => 231,
  "key4" => {}
}

puts my_hash["key1"] + " " + my_hash["key2"]

new_key = "key4"
msg = my_hash.fetch(new_key, "no such a key")
puts msg

puts my_hash.keys
puts
puts my_hash.values

american_cars = {
  :chevrolet => "Corvette",
  :dodge => "Viper",
  :ford => "F-150"
}

japanese_cars = {
  honda: "City",
  toyota: "Corolla",
  subaru: "Impreza"
}

all_cars = american_cars.merge(japanese_cars)
puts american_cars
puts japanese_cars
puts all_cars

all_cars[:lada] = "2101"

puts all_cars[:lada]

