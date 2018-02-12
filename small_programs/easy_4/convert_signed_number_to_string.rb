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

def signed_integer_to_string(int)
  str = integer_to_string(int.abs)
  if int < 0
    str.prepend('-')
  elsif int > 0
    str.prepend('+')
  else
    str
  end
end

p signed_integer_to_string(4321) == '+4321'
p signed_integer_to_string(-123) == '-123'
p signed_integer_to_string(0) == '0'
