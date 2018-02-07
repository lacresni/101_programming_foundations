# Print the even numbers from 1 to 99, inclusive.
# All numbers should be printed on separate lines.
(1..99).each { |x| puts x if x.even? }

puts '-------------------'
puts '  Another Solution '
puts '-------------------'
arr = (1..99).select(&:even?)
puts arr
