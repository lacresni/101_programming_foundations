# - Compare string lengths
#   - Save shortest
#   - Save longest
# - Return a new string by concatenating the shorter string, the longer string,
# and the shorter string once again

def short_long_short(string1, string2)
  if string1.size > string2.size
    longest = string1
    shortest = string2
  else
    longest = string2
    shortest = string1
  end
  
  "#{shortest}#{longest}#{shortest}"
end

p short_long_short('abc', 'defgh') == "abcdefghabc"
p short_long_short('abcde', 'fgh') == "fghabcdefgh"
p short_long_short('', 'xyz') == "xyz"
