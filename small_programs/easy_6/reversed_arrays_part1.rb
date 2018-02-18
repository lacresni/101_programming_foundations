# - Compute number of elements in the array
# - Use two indexes
#   - start_index = 0
#   - end_index = size-1
# - while start_index < end_index
#   - swap arr[start_index] and arr[end-index]
#   - start_index += 1
#   - end_index -= 1

def reverse!(arr)
  start_index = 0
  end_index = arr.size - 1

  while start_index < end_index
    arr[start_index], arr[end_index] = arr[end_index], arr[start_index]

    start_index += 1
    end_index -= 1
  end

  arr
end

list = [1, 2, 3, 4]
result = reverse!(list) # => [4,3,2,1]
p list == [4, 3, 2, 1]
p list.object_id == result.object_id

list = %w(a b c d e)
reverse!(list) # => ["e", "d", "c", "b", "a"]
p list == %w(e d c b a)

list = ['abc']
reverse!(list) # => ["abc"]
p list == ["abc"]

list = []
reverse!(list) # => []
p list == []
