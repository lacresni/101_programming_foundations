# - Compute number of elements
#   - First half size = size / 2 if size is even
#   - First half size = size / 2 + 1 if size is odd
#   - Second half size = size / 2
# - Create an empty array result[]
# - Slice first half of original array starting from index 0 and first_half_size
# - Add returned array to result array
# - Slice second half of original array starting from index - 1 and
#   second_half_size
# - Add returned array to result array

def halvsies(arr)
  size = arr.size
  first_half_size = size.odd? ? (size / 2) + 1 : size / 2

  result_arr = []

  result_arr << arr.slice(0, first_half_size)
  result_arr << arr.slice(first_half_size, size / 2)

  result_arr
end

p halvsies([1, 2, 3, 4]) == [[1, 2], [3, 4]]
p halvsies([1, 5, 2, 4, 3]) == [[1, 5, 2], [4, 3]]
p halvsies([5]) == [[5], []]
p halvsies([]) == [[], []]
