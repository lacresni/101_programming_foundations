# - Ask the user for an integer greater than 0
# - Ask the user the operation to perform (sum or product)
# - If operation to perform == sum
#   - Compute sum of all numbers between 1 and the entered integer.
# - else
#   - Compute product of all numbers between 1 and the entered integer.
# - Display results

def prompt(message)
  puts ">> #{message}"
end

def valid_choice?(choice)
  %w(s p).include?(choice)
end

def sum(integer)
  (1..integer).reduce(:+)
end

def product(integer)
  (1..integer).reduce(:*)
end

integer = 0
loop do
  prompt('Please enter an integer greater than 0:')
  integer = gets.chomp.to_i
  break if integer > 0
end

choice = ''
loop do
  prompt("Enter 's' to compute the sum, 'p' to compute the product.")
  choice = gets.chomp
  break if valid_choice?(choice)
  prompt('Please enter a valid choice...')
end

result = choice == 's' ? sum(integer) : product(integer)
opstr = choice == 's' ? 'sum' : 'product'

puts "The #{opstr} of the integers between 1 and #{integer} is #{result}."
