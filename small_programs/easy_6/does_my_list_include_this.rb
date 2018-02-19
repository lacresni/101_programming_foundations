# - Index = 0
# - Found = false
# - while index < arr.size && !Found
#   - Found = true if arr[index] == Search Value

def include?(arr, search_value)
  found = false
  index = 0

  while !found && index < arr.size
    found = true if arr[index] == search_value
    index += 1
  end

  found
end

p include?([1, 2, 3, 4, 5], 3) == true
p include?([1, 2, 3, 4, 5], 6) == false
p include?([], 3) == false
p include?([nil], nil) == true
p include?([], nil) == false
