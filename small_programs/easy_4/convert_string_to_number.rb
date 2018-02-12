# - Reverse the string
# - Convert to an array of chars
# - Number = 0
# - Iterate through the array with index
#   - For each element, compute
#     - number += array[index] * 10**index
# - Return number
CONVERT_HASH = {
  '1' => 1, '2' => 2, '3' => 3, '4' => 4, '5' => 5,
  '6' => 6, '7' => 7, '8' => 8, '9' => 9, '0' => 0,
  'a' => 10, 'b' => 11, 'c' => 12, 'd' => 13, 'e' => 14,
  'f' => 15
}

def string_to_integer(digits_str)
  arr = digits_str.reverse.chars
  number = 0

  arr.each_index do |index|
    digit = CONVERT_HASH[arr[index]]
    number += digit * 10**index
  end

  number
end

p string_to_integer('4321') == 4321
p string_to_integer('570') == 570
p string_to_integer('0') == 0

def hexadecimal_to_integer(digits_str)
  arr = digits_str.downcase.reverse.chars
  number = 0

  arr.each_index do |index|
    digit = CONVERT_HASH[arr[index]]
    number += digit * 16**index
  end

  number
end

puts 'hexadecimal_to_integer'
p hexadecimal_to_integer('4D9f') == 19_871
