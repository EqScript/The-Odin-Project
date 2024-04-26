# Method calculates number of entries of the keywords in the provided string array
# It's case insensitive - both input arrays are #downcase before looping
def count_substrings (keywords, dictionary)
  keywords.map!(&:downcase)
  dictionary.map!(&:downcase)
  result = {}

  keywords.each do  |keyword|
    counter = 0
    #  Searching for a keyword in the dictionary array
    dictionary.each do |word|
      counter += 1 if word.include?(keyword)
    end
    #  filling hash with 'key' => found_amount
    result[keyword] = counter
  end
  result
end

def fill_dictionary
  dictionary = []
  loop do
    puts 'Enter a word (empty to finish): '
    word = gets.chomp
    break if word.empty?
    dictionary << word
  end
  dictionary
end

def fill_keywords
  keywords = []
  loop do
    puts 'Enter a key (empty to finish): '
    keyword = gets.chomp
    break if keyword.empty?
    keywords << keyword
  end
  keywords
end

#******************** void main()  **********************#
divider = :_______________________________
dictionary = fill_dictionary
puts divider
keywords = fill_keywords
puts result_hash = count_substrings(keywords, dictionary)

