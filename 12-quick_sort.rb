#############################################
#
#   Quick Sort method by Sergio Belenkoff   #
#   May, 2024                               #
#
#############################################

def is_valid_array( array )
	return false unless array.is_a?(Array)
	return false unless array.all? { |element| element.is_a?(Integer) }
	#	Else
	return true
end

def quick_sort ( array )
	# Checking for valid input
	return nil unless is_valid_array( array )

	#	Recursion break condition
	return array if array.length <= 1

	pivot = array.delete_at( array.length / 2 )
	left, right = array.partition{ |element| element < pivot }
	result = *quick_sort( left ), pivot, *quick_sort( right )
end


#			=== Main Function ===

arr = [ 1, 12 , 23, 7, 6, 85 ]
p quick_sort( arr )