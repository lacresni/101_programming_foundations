# - Split string into an array of words
# - Return next to last word with index '-2' (or array.size-2)

def penultimate(string)
  string.split[-2]
end

puts "Penultimate method"
p penultimate('last word') == 'last'
p penultimate('Launch School is great!') == 'is'

def middle(string)
  p string
  array_words = string.split
  nb_elements = array_words.size

  if nb_elements.even?
    puts "Invalid string. It should contain an odd number of words."
    return ''
  end

  array_words[nb_elements / 2]
end

puts '--------------------'
puts "   middle method"
puts '--------------------'
p middle('last word') == ''
puts
p middle('') == ''
puts
p middle('Launch School is really great!') == 'is'
puts
p middle('Hello!') == 'Hello!'
