# - Initialize en empty array product[]
# - Iterate through the first array with index
#   - For each number, compute number * array2[index]
#     - add product result to product[]
# - Return product[] array

def multiply_list(arr1, arr2)
  product = []
  arr1.each_with_index do |x, index|
    product << (x * arr2[index])
  end
  product
end

p multiply_list([3, 5, 7], [9, 10, 11]) == [27, 50, 77]
