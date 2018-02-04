# Write a method that takes two arguments, a string and a positive integer,
# and prints the string as many times as the integer indicates.
def repeat(str, nb_times)
  if nb_times < 0
    puts 'You must provide a positive number!'
    return
  end

  nb_times.times { puts str }
end

puts 'Test case 1: positive value'
repeat('Hello', 3)
puts 'Test case 2: null value'
repeat('Hello', 0)
puts 'Test case 3: negative value'
repeat('Hello', -3)
