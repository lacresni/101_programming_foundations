# - Ask the user for 5 numbers
#   - Store each number into an array
# - Ask the user for a number
#   - Check if number is included in the array
# - Diplay result
INDEX_STRINGS = %w(1st 2nd 3rd 4th 5th last).freeze

def get_number(index)
  puts "==> Enter the #{INDEX_STRINGS[index]} number:"
  gets.chomp.to_i
end

input_arr = []
5.times { |count| input_arr << get_number(count) }

test_number = get_number(5)

if input_arr.include?(test_number)
  puts "The number #{test_number} appears in #{input_arr}."
else
  puts "The number #{test_number} does not appear in #{input_arr}."
end
