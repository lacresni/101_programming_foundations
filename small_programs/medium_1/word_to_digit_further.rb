# - Create a hash for translating word to digit
# - Transform string into an array of string
# - Iterate through the array (use map for transformation)
#   - If word matches one the translation hash key
#     - Replace by corresponding digit
#     - Use given word
# - Caution with final punctuation...
CONVERT_WORD_TO_DIGIT = {
  'zero' => 0, 'one' => 1, 'two' => 2, 'three' => 3,
  'four' => 4, 'five' => 5, 'six' => 6,
  'seven' => 7, 'eight' => 8, 'nine' => 9
}

def word_to_digit_no_spaces(string)
  words = string.gsub('.', ' .').split(' ')

  words.map! do |word|
    CONVERT_WORD_TO_DIGIT.fetch(word.downcase, word)
  end
  new_str = words.join(' ').gsub(' .', '.')

  # Remove extra spaces between digits (look for 'digit+space' pattern)
  new_str.gsub!(/(\d) /, '\1')
end

def word_to_digit_phone_nb(string)
  new_str = word_to_digit_no_spaces(string)
  # Search for 3 digits + 3 digits + 4 digits  (3 groups)
  new_str.gsub!(/(\d{3})(\d{3})(\d{4})/, '(\1) \2-\3')
end

p word_to_digit_no_spaces('Please call me at five five five one two three four. Thanks.')
# == 'Please call me at 5551234. Thanks.'

p word_to_digit_phone_nb('Please call me at one two three four five six seven eight nine zero. Thanks.')
# == 'Please call me at (123) 456-7890. Thanks.''
