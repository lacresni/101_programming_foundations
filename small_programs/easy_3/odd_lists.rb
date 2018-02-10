# Write a method that returns an Array that contains every other element of an
# Array that is passed in as an argument. The values in the returned list should
# be those values that are in the 1st, 3rd, 5th, and so on elements of the
# argument Array.

def oddities(arr)
  index = 0
  arr.select do |e|
    index += 1
    index.odd?
  end
end

puts 'oddities'
p oddities([2, 3, 4, 5, 6]) == [2, 4, 6]
p oddities(['abc', 'def']) == ['abc']
p oddities([123]) == [123]
p oddities([]) == []

def parities(arr)
  index = 0
  arr.select do |_|
    index += 1
    index.even?
  end
end

puts 'parities'
p parities([2, 3, 4, 5, 6]) == [3, 5]
p parities(['abc', 'def']) == ['def']
p parities([123]) == []
p parities([]) == []

def oddities_2(arr)
  arr_odd = []

  index = 0
  while index < arr.size
    arr_odd.push(arr[index])
    index += 2
  end

  arr_odd
end

puts 'oddities_2'
p oddities_2([2, 3, 4, 5, 6]) == [2, 4, 6]
p oddities_2(['abc', 'def']) == ['abc']
p oddities_2([123]) == [123]
p oddities_2([]) == []

def oddities_3(arr)
  arr_odd = []

  arr.each_index do |index|
    arr_odd << arr[index] if index.even?
  end

  arr_odd
end

puts 'oddities_3'
p oddities_3([2, 3, 4, 5, 6]) == [2, 4, 6]
p oddities_3(['abc', 'def']) == ['abc']
p oddities_3([123]) == [123]
p oddities_3([]) == []
