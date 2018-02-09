puts 'Please write word or multiple words:'
string = gets.chomp

nb_chars = string.split.join.size

puts "There are #{nb_chars} characters in \"#{string}\"."
