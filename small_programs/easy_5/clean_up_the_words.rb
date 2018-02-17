# - Create an empty string result
# - Iterate through the input string
#   - For each char, verify it is an alphabetic character (a-z) or (A-Z)
#     - If true, add character to result (result << char)
#     - If false, add a space char only if result[-1] != ' '
# - Return result string

def cleanup(string)
  clean_str = ''
  string.chars.each do |char|
    case char.downcase
    when ('a'..'z') then clean_str << char
    else
      clean_str << ' ' if clean_str[-1] != ' '
    end
  end
  clean_str
end

p cleanup("---what's my +*& line?") == ' what s my line '
