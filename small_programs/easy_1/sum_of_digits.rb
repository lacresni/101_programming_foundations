# - Transform integer into a string
# - Split string to extract each chars into an array of chars
# - Map the array of chars to an array of integers
# - Sum the elements of the array of integers
# - Return the sum

def sum(number)
  number.to_s.chars.map(&:to_i).reduce(:+)
end

puts sum(23) == 5
puts sum(496) == 19
puts sum(123_456_789) == 45
