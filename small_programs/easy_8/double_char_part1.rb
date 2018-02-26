# - Create an empty string for reply
# - Iterate through input string
#   - For every character
#     - Add character twice in reply string
# - Return reply string

def repeater(string)
  reply = ''
  string.each_char { |char| reply << (char * 2) }
  reply
end

p repeater('Hello') == "HHeelllloo"
p repeater("Good job!") == "GGoooodd  jjoobb!!"
p repeater('') == ''
