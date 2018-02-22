# - Write a swapcase method with char as an argument
#   - if char is in (a-z) return char.upcase
#   - if char is in (A-Z) return char.downcase
#   - else return char
#
# - Create an empty string
# - Iterate through each characters
#   - call swapcase and add returned value to new string

def swapcharcase(char)
  case char
  when ('a'..'z') then char.upcase
  when ('A'..'Z') then char.downcase
  else char
  end
end

def swapcase(string)
  swapstring = ''
  string.each_char { |char| swapstring << swapcharcase(char) }
  p swapstring
end

p swapcase('CamelCase') == 'cAMELcASE'
p swapcase('Tonight on XYZ-TV') == 'tONIGHT ON xyz-tv'
