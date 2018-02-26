# - Convert integer to string
# - Reverse string
# - Convert string to integer

def reversed_number(number)
  number.to_s.reverse.to_i
end

p reversed_number(12_345) == 54_321
p reversed_number(12_213) == 31_221
p reversed_number(456) == 654
p reversed_number(12_000) == 21 # Note that zeros get dropped!
p reversed_number(1) == 1
