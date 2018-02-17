# - Create an empty hash with default value 0
# - Split string into an array of words
# - Iterate through the array
#   - For each word
#     - Delete non alphabetic characters
#     - Compute its size
#     - Fill hash by using size as a key and increment its value by one

def word_sizes(string)
  hash_result = Hash.new(0)
  string.split.each do |word|
    temp_word = word.downcase.delete("^a-z")
    hash_result[temp_word.size] += 1
  end
  hash_result
end

p word_sizes('Four score and seven.') == { 3 => 1, 4 => 1, 5 => 2 }
p word_sizes('Hey diddle diddle, the cat and the fiddle!') == { 3 => 5, 6 => 3 }
p word_sizes("What's up doc?") == { 5 => 1, 2 => 1, 3 => 1 }
p word_sizes('') == {}
