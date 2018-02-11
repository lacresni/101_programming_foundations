# Write a method that searches for all multiples of 3 or 5 that lie between 1
# and some other number, and then computes the sum of those multiples.
# For instance, if the supplied number is 20,
# the result should be 98 (3 + 5 + 6 + 9 + 10 + 12 + 15 + 18 + 20).
#
# You may assume that the number passed in is an integer greater than 1.

def multisum(n)
  sum = 0
  (1..n).each do |x|
    sum += x if (x % 3 == 0) || (x % 5 == 0)
  end
  sum
end

p multisum(3) == 3
p multisum(5) == 8
p multisum(10) == 33
p multisum(1000) == 234_168

def multisum_with_reduce(n)
  arr = []
  (1..n).each do |x|
    arr << x if (x % 3 == 0) || (x % 5 == 0)
  end
  arr.reduce(:+)
end

puts 'multisum_with_reduce'
p multisum_with_reduce(3) == 3
p multisum_with_reduce(5) == 8
p multisum_with_reduce(10) == 33
p multisum_with_reduce(1000) == 234_168
