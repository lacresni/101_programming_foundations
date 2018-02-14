# - Transform string into an array of chars
# - Initialize sum with 0
# - Iterate through the array
#   - For each character in the array
#     - use String#ord to determine the ASCII value of a character
#     - add returned value (integer) to sum variable
# - Return sum

def ascii_value(string)
  arr_chars = string.chars
  sum = 0

  arr_chars.each { |char| sum += char.ord }

  sum
end

p ascii_value('Four score') == 984
p ascii_value('Launch School') == 1251
p ascii_value('a') == 97
p ascii_value('') == 0
