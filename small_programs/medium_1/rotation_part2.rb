# - Convert integer to an array
# - Partition array to
#   - rightmost substring (length = 'n')
#   - leftmost substring (length = array length - 'n')
# - Rotate rightmost substring
# - Concatenate leftmost and rotated rightmost substrings

def rotate_array(array)
  arr_copy = array.clone
  return arr_copy if arr_copy.empty?
  arr_copy.push(arr_copy.shift)
end

def rotate_rightmost_digits(number, nb_digits)
  arr = number.to_s.chars
  leftmost = arr[0..(-nb_digits - 1)]
  rightmost = arr[-nb_digits..-1]
  (leftmost + rotate_array(rightmost)).join.to_i
end

p rotate_rightmost_digits(735_291, 1) == 735_291
p rotate_rightmost_digits(735_291, 2) == 735_219
p rotate_rightmost_digits(735_291, 3) == 735_912
p rotate_rightmost_digits(735_291, 4) == 732_915
p rotate_rightmost_digits(735_291, 5) == 752_913
p rotate_rightmost_digits(735_291, 6) == 352_917
