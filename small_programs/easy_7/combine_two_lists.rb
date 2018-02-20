# - Create an empty array combined_arr[]
# - Iterate through first array with index
#   - Add element to combined_arr[]
#   - Add second_arr[index] element to combined_arr[]

def interleave(arr1, arr2)
  combined_arr = []

  arr1.each_with_index do |x, index|
    combined_arr << x
    combined_arr << arr2[index]
  end

  combined_arr
end

p interleave([1, 2, 3], %w(a b c)) == [1, 'a', 2, 'b', 3, 'c']
