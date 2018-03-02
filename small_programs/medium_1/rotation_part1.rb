# - Copy initial array
# - Unshift first element from the array
# - Push this element into last position in the array

def rotate_array(array)
  arr_copy = array.clone
  return arr_copy if arr_copy.empty?
  arr_copy.push(arr_copy.shift)
end

p rotate_array([7, 3, 5, 2, 9, 1]) == [3, 5, 2, 9, 1, 7]
p rotate_array(['a', 'b', 'c']) == ['b', 'c', 'a']
p rotate_array(['a']) == ['a']
p rotate_array([]) == []
p rotate_array([nil]) == [nil]

x = [1, 2, 3, 4]
p rotate_array(x) == [2, 3, 4, 1]   # => true
p x == [1, 2, 3, 4]                 # => true

def rotate_string(string)
  rotate_array(string.chars).join
end

p rotate_string('Hello') == 'elloH'
p rotate_string('Hello Nicolas!') == 'ello Nicolas!H'

def rotate_integer(int)
  rotate_string(int.to_s).to_i
end

p rotate_integer(12_345_678) == 23_456_781
