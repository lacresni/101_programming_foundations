# - Reduce array by multiplying all numbers together
# - Divide result by number of elements in the array
# - Display result
def show_multiplicative_average(arr_nb)
  average = arr_nb.reduce(:*) / arr_nb.size.to_f
  puts "=> The result is #{format('%.03f', average)}"
end

show_multiplicative_average([3, 5])
# => The result is 7.500

show_multiplicative_average([6])
# => The result is 6.000

show_multiplicative_average([2, 5, 7, 11, 13, 17])
# => The result is 28361.667
