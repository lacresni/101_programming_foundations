# Reversed Arrays (Part 1)

Write a method that takes an Array as an argument, and reverses its elements in place; that is, mutate the Array passed into this method. The return value should be the same Array object.

You may not use `Array#reverse` or `Array#reverse!`.

Examples:

```ruby
list = [1,2,3,4]
result = reverse!(list) # => [4,3,2,1]
list == [4, 3, 2, 1]
list.object_id == result.object_id

list = %w(a b c d e)
reverse!(list) # => ["e", "d", "c", "b", "a"]
list == ["e", "d", "c", "b", "a"]

list = ['abc']
reverse!(list) # => ["abc"]
list == ["abc"]

list = []
reverse!(list) # => []
list == []
```

### Understand the problem

```
- Input:
  - Array
- Output:
  - Array with reversed elements
  - The return value should be the same Array object
```

### Tests Cases

```
See above
```

### Data Structures

```
- Input:
  - Array
- Output:
  - Array
```

### Algorithm

```
- Compute number of elements in the array
- Use two indexes
  - start_index = 0
  - end_index = size-1
- while start_index < end_index
  - swap arr[start_index] and arr[end-index]
  - start_index += 1
  - end_index -= 1
```
