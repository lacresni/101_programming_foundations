CONVERT_HASH = {
  '1' => 1, '2' => 2, '3' => 3, '4' => 4, '5' => 5,
  '6' => 6, '7' => 7, '8' => 8, '9' => 9, '0' => 0
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

# - Remove leading '+' or '-' from string
# - Call 'string_to_integer' method from the previous lesson with previous
#   string (without '+' or '-') and assign returned value to result
# - Check if input string starts with a '-'
#   If yes, multiply 'string_to_integer' result by -1
# - Return result
def string_to_signed_integer(digits_str)
  number = string_to_integer(digits_str.delete('+-'))
  digits_str.start_with?('-') ? number * -1 : number
end

p string_to_signed_integer('4321') == 4321
p string_to_signed_integer('-570') == -570
p string_to_signed_integer('+100') == 100
