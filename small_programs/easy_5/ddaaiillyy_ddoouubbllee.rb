# - Transforn string into an array of chars
# - Create an empty string for result
#   - Iterate through the array
#     - For each char
#       - Add to result string if previous char is different than last char in
#         result

def crunch(string)
  str_result = ''
  string.chars.each do |char|
    str_result << char unless char == str_result[-1]
  end
  str_result
end

p crunch('ddaaiillyy ddoouubbllee') == 'daily double'
p crunch('4444abcabccba') == '4abcabcba'
p crunch('ggggggggggggggg') == 'g'
p crunch('a') == 'a'
p crunch('') == ''
