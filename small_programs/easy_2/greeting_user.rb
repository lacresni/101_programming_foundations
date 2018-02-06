# - Ask for user's name
# - Check if name ends with '!'
#   - If not, greet user
#   - If yes
#     - Remove '!' from name
#     - Greet the user by displaying string in uppercase

puts 'What is your name?'
name = gets.chomp

str = if name.end_with?('!')
        "HELLO #{name.delete('!')}. WHY ARE WE SCREAMING?".upcase
      else
        "Hello #{name}."
      end

puts str
