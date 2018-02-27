require 'pry'

# - double? method to check if argument is a double
#   - Transform integer to string
#     - If string size is odd, return false
#     - left-side = string[0, size/2]
#     - right-side = string[size/2, size/2]
#     - return left-side and right-side comparison
# - Call double?(integer)
#   - If true, return integer
#   - Else, return integer * 2
def double?(number)
  nb_str = number.to_s
  return false if nb_str.size.odd?

  size = nb_str.size / 2
  left_side = nb_str[0, size]
  right_side = nb_str[size, size]

  left_side == right_side
end

def twice(number)
  double?(number) ? number : number * 2
end

p twice(37) == 74
p twice(44) == 44
p twice(334_433) == 668_866
p twice(444) == 888
p twice(107) == 214
p twice(103_103) == 103_103
p twice(3_333) == 3_333
p twice(7_676) == 7_676
p twice(123_456_789_123_456_789) == 123_456_789_123_456_789
p twice(5) == 10
