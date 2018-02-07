# Print all odd numbers from 1 to 99, inclusive.
# All numbers should be printed on separate lines.
(1..99).each { |x| puts x if x.odd? }

puts '-------------------'
puts '  Another Solution '
puts '-------------------'

arr = (1..99).select(&:odd?)
puts arr
