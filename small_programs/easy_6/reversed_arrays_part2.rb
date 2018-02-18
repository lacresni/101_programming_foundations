# - Compute number of elements in the array
# - Create an empty array result[]
# - index = size - 1
# - until index < 0
#   - result << arr[index]
#   - index -= 1

def reverse(arr)
  index = arr.size - 1
  new_arr = []

  until index < 0
    new_arr << arr[index]
    index -= 1
  end

  p new_arr
end

p reverse([1, 2, 3, 4]) == [4, 3, 2, 1]    # => true
p reverse(%w(a b c d e)) == %w(e d c b a)  # => true
p reverse(['abc']) == ['abc']              # => true
p reverse([]) == []                        # => true

list = [1, 2, 3]                      # => [1, 2, 3]
new_list = reverse(list)              # => [3, 2, 1]
p list.object_id != new_list.object_id  # => true
p list == [1, 2, 3]                     # => true
p new_list == [3, 2, 1]                 # => true
