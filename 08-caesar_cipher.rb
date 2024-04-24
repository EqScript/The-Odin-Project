LOWCASE_RANGE = ('a'.ord .. 'z'.ord)
UPCASE_RANGE = ('A'.ord .. 'Z'.ord)

def shift_letter(char, step)
  char_code = char.ord
  if LOWCASE_RANGE.include?(char_code)
    new_char_code = (char_code - LOWCASE_RANGE.first + step) % 26 + LOWCASE_RANGE.first
    new_char_code.chr
  elsif UPCASE_RANGE.include?(char_code)
    new_char_code = (char_code - UPCASE_RANGE.first + step) % 26 + UPCASE_RANGE.first
    new_char_code.chr
  end
end

def encrypt_string(original_text, step)
  split_arr = original_text.split('')
  split_arr.map! { |letter| shift_letter(letter, step) }
  split_arr.join
end

loop do
  puts 'Input the string (empty to exit): '
  text_to_encrypt = gets.chomp

  if text_to_encrypt.empty?
    puts 'Now exit...'
    break
  end

  puts 'Enter key: '
  step = gets.chomp.to_i
  p encrypt_string(text_to_encrypt, step)
end