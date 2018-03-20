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

def word_to_digit(string)
  words = string.gsub('.', ' .').split(' ')

  words.map! do |word|
    CONVERT_WORD_TO_DIGIT.fetch(word.downcase, word)
  end
  words.join(' ').gsub(' .', '.')
end

p word_to_digit('Please call me at five five five one two three four. Thanks.')
# == 'Please call me at 5 5 5 1 2 3 4. Thanks.'
