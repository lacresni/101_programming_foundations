# - Initialize an empty hash with default value of 0
# - For each element in the array,
#   - add it to the hash
#   - increment its value
# - Iterate through the hash
#   - print each element alongside the number of occurrences.

def count_occurrences(words_arr)
  hash_nb_occurrence = Hash.new(0)

  words_arr.each do |word|
    hash_nb_occurrence[word] += 1
  end

  hash_nb_occurrence.each do |key, value|
    puts "#{key} => #{value}"
  end
end

vehicles = ['car', 'car', 'truck', 'car', 'SUV', 'truck', 'motorcycle',
            'motorcycle', 'car', 'truck']

count_occurrences(vehicles)
