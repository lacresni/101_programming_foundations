def average(nb_array)
  nb_array.sum / nb_array.size
end

puts average([1, 5, 87, 45, 8, 8]) == 25
puts average([9, 47, 23, 95, 16, 52]) == 40 # 242 / 6 = 40.3333

puts '-------------------'
puts 'Further exploration'
puts '-------------------'

def average_further(nb_array)
  nb_array.reduce(:+).to_f / nb_array.count
end

puts average_further([1, 5, 87, 45, 8, 8])     # 25.666666667
puts average_further([9, 47, 23, 95, 16, 52])  # 242 / 6 = 40.3333
