# - Iterate through first array
#   - For each element
#     - Iterate through second array
#       - For each element, compute element1 * element2
# - Flatten the two arrays of results
# - Sort the final array

def multiply_all_pairs(arr1, arr2)
  result_arr = arr1.map do |element1|
    arr2.map do |element2|
      element1 * element2
    end
  end
  result_arr.flatten.sort
end

p multiply_all_pairs([2, 4], [4, 3, 1, 2]) == [2, 4, 4, 6, 8, 8, 12, 16]
