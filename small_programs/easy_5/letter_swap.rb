# - Split input string to get an array containing each word
# - Iterate through the array
#   - For each word
#     - Save first char [0]
#     - Copy last char to first index
#     - Copy saved char (first) to last index
# - Join the array by adding a space separator

def swap(input_str)
  words = input_str.split

  words.each do |word|
    first_char = word[0]
    word[0] = word[-1]
    word[-1] = first_char
  end

  words.join(' ')
end

p swap('Oh what a wonderful day it is') == 'hO thaw a londerfuw yad ti si'
p swap('Abcde') == 'ebcdA'
p swap('a') == 'a'
