def move(n, from_array, to_array)
  return if n == 0
  to_array << from_array.shift
  move(n - 1, from_array, to_array)
end

# Example

todo = ['study', 'walk the dog', 'coffee with Tom']
done = ['apply sunscreen', 'go to the beach']

move(2, todo, done)

p todo # should be: ['coffee with Tom']
p done # should be: ['apply sunscreen', 'go to the beach', 'study', 'walk the dog']

# Further Exploration
# What happens if the length of the from_array is smaller than n?
=begin
Array#shift returns nil when there is no more element in the array
So, 'nil' values will be added to the `to_array` if the length of the from_array
is smaller than n
=end
