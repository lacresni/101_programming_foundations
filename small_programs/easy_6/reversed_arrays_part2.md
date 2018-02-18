# Reversed Arrays (Part 2)

Write a method that takes an Array, and returns a new Array with the elements of the original list in reverse order. Do not modify the original list.

You may not use `Array#reverse` or `Array#reverse!`, nor may you use the method you wrote in the previous exercise.

Examples:

```ruby
reverse([1,2,3,4]) == [4,3,2,1]          # => true
reverse(%w(a b c d e)) == %w(e d c b a)  # => true
reverse(['abc']) == ['abc']              # => true
reverse([]) == []                        # => true

list = [1, 2, 3]                      # => [1, 2, 3]
new_list = reverse(list)              # => [3, 2, 1]
list.object_id != new_list.object_id  # => true
list == [1, 2, 3]                     # => true
new_list == [3, 2, 1]                 # => true
```

### Understand the problem

```
- Input:
  - A array
- Output:
  - A new array with the elements of the original list in reverse order
  	- Do not modify the original list
```

### Tests Cases

```
See above
```

### Data Structures

```
- Input:
  - A array
- Output:
  - A new array
```

### Algorithm

```
- Compute number of elements in the array
- Create an empty array result[]
- index = size - 1
- until index < 0
  - result << arr[index]
  - index -=1
```



#### Further Exploration

An even shorter solution is possible by using either `inject` or `each_with_object`. Just for fun, read about these methods in the `Enumerable` module documentation, and try using one in your `reverse` method.

```ruby
arr.each_with_object([]) { |element, array| array.unshift(element) }
```

```ruby
arr.inject([]) { |accumulator, element| accumulator.unshift(element) }
# or
arr.inject([]) { |accumulator, element| [element] + accumulator }
```

