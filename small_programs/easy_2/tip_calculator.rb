# - ask user for a bill amount
# - ask user for a tip rate in percent
# - Compute the tip (bill amount * tip rate / 100)
# - Display tip
# - Display total amount of the bill

puts 'What is the bill?'
bill = gets.chomp.to_f

puts 'What is the tip percentage?'
tip_rate = gets.chomp.to_f

tip = (bill * (tip_rate / 100)).round(2)
total = (bill + tip).round(2)

puts "The tip is $#{format('%.02f', tip)}"
puts "The total is $#{format('%.02f', total)}"
