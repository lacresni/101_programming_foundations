# - Create a valid_char table
#   - Contains values from 'a' to 'z'
#   - Delete vowels 'aeiou'
# - Create an empty string for reply
# - Iterate through input string
#   - For every character
#     - Check if it is valid
#       - If yes, add character twice in reply string
# - Return reply string
def valid_char?(char)
  valid_table = ('a'..'z').to_a
  'aeiou'.each_char { |vowel| valid_table.delete(vowel) }

  valid_table.include?(char.downcase)
end

def double_consonants(string)
  reply = ''
  string.each_char do |char|
    reply << (valid_char?(char) ? (char * 2) : char)
  end
  reply
end

p double_consonants('String') == "SSttrrinngg"
p double_consonants("Hello-World!") == "HHellllo-WWorrlldd!"
p double_consonants("July 4th") == "JJullyy 4tthh"
p double_consonants('') == ""
