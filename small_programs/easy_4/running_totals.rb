# Write a method that takes an Array of numbers, and returns an Array
# with the same number of elements, and each element has the running total
# from the original Array.

def running_total(int_arr)
  sum = 0
  int_arr.map do |x|
    sum += x
  end
end

p running_total([2, 5, 13]) == [2, 7, 20]
p running_total([14, 11, 7, 15, 20]) == [14, 25, 32, 47, 67]
p running_total([3]) == [3]
p running_total([]) == []

def running_total_with_reduce(int_arr)
  arr = []

  while int_arr.empty? == false
    arr.unshift(int_arr.reduce(&:+))
    int_arr.pop
  end

  arr
end

puts 'running_total_with_reduce'
p running_total_with_reduce([2, 5, 13]) == [2, 7, 20]
p running_total_with_reduce([14, 11, 7, 15, 20]) == [14, 25, 32, 47, 67]
p running_total_with_reduce([3]) == [3]
p running_total_with_reduce([]) == []

def running_total_each_with_object(int_arr)
  int_arr.each_with_object([]) do |x, arr|
    arr.push(arr.last.to_i + x)
  end
end

puts 'running_total_each_with_object'
p running_total_each_with_object([2, 5, 13]) == [2, 7, 20]
p running_total_each_with_object([14, 11, 7, 15, 20]) == [14, 25, 32, 47, 67]
p running_total_each_with_object([3]) == [3]
p running_total_each_with_object([]) == []
