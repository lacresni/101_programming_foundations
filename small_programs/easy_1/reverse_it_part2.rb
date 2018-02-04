# - Split the input string into an array of strings
# - For each element in the array of strings
#   - Reverse the current string element if its size >= 5
# - Join the elements into a string
#   - separated by a space only when size of array of strings
#     is greater than one

def reverse_words(input_string)
  words_array = input_string.split

  words_array.map! do |word|
    word.size >= 5 ? word.reverse : word
  end

  words_array.join(' ')
end

puts reverse_words('Professional') == 'lanoisseforP'
puts reverse_words('Walk around the block') == 'Walk dnuora the kcolb'
puts reverse_words('Launch School') == 'hcnuaL loohcS'
