# - Split the input string into an array of strings
# - Reverse the array of strings elements
# - Join the elements into a string separated by a space

def reverse_sentence(input_string)
  input_string.split.reverse.join(' ')
end

puts reverse_sentence('') == ''
puts reverse_sentence('Hello World') == 'World Hello'
puts reverse_sentence('Reverse these words') == 'words these Reverse'
