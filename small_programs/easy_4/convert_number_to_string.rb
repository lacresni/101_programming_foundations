# - Create an array for conversions ['0', '1', .. '9']
# - Create an empty string
# - While number > 0
#   - Convert number % 10 to a string char with the hash table
#   - Add string char to string
#   - number /= 10
# - Return string
DIGIT_TO_CHAR = %w(0 1 2 3 4 5 6 7 8 9)

def integer_to_string(int)
  str = ''
  loop do
    str << DIGIT_TO_CHAR[int % 10]
    int /= 10
    break if int == 0
  end
  str.reverse
end

p integer_to_string(4321) == '4321'
p integer_to_string(0) == '0'
p integer_to_string(5000) == '5000'
