# - Convert integer to string and compute its size 'n'
# - rotated = input integer
# - Iterate 'n' times
#   - rotated = rotate_rightmost_digits(rotated, n-loop)
# - return rotated

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

def max_rotation(number)
  nb_digits = number.to_s.size
  nb_digits.downto(2) do |n|
    number = rotate_rightmost_digits(number, n)
  end
  number
end

p max_rotation(735_291) == 321_579
p max_rotation(3) == 3
p max_rotation(35) == 53
p max_rotation(105) == 15 # the leading zero gets dropped
p max_rotation(8_703_529_146) == 7_321_609_845
