require 'pry-byebug'

def greeting(name = "user")
	user_name = name

#	binding.pry	#  breakpoint

	user_name = user_name.upcase
	greeting = "WAZZUP, #{user_name}!"

	puts greeting
end

greeting()

greeting("Neil")
