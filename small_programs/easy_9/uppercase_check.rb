# - Set result = true
# - Iterate through the string
#   - For each character
#     - If character is not alphabetic, ignore
#     - If character is downcase, return false
#     - else continue
def uppercase?(string)
  string.each_char do |char|
    return false if ('a'..'z').cover?(char)
  end
  true
end

p uppercase?('t') == false
p uppercase?('T') == true
p uppercase?('Four Score') == false
p uppercase?('FOUR SCORE') == true
p uppercase?('4SCORE!') == true
p uppercase?('') == true
