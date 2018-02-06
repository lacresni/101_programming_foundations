# - Ask for user's name
# - Check if name ends with '!'
#   - If not, greet user
#   - If yes
#     - Remove '!' from name
#     - Greet the user by displaying string in uppercase

print 'What is your name? '
name = gets.chomp!

if name[-1] == '!'
  name = name.chop!
  puts "HELLO #{name.upcase}. WHY ARE WE SCREAMING?"
else
  puts "Hello #{name}."
end
