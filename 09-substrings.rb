def count_substrings (keywords, dictionary)
  keywords.map!(&:downcase)
  dictionary.map!(&:downcase)
  result = {}
  keywords.each do  |keyword|
    counter = 0
    dictionary.each do |word|
      if word.include?(keyword)
        counter += 1
      end
    end
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

#******************** void main()  ************************#
divider = :_______________________________
dictionary = fill_dictionary
puts divider
keywords = fill_keywords
puts result_hash = count_substrings(keywords, dictionary)

