# Odd Lists

Write a method that returns an Array that contains every other element of an `Array` that is passed in as an argument. The values in the returned list should be those values that are in the 1st, 3rd, 5th, and so on elements of the argument Array.

Examples:

```ruby
oddities([2, 3, 4, 5, 6]) == [2, 4, 6]
oddities(['abc', 'def']) == ['abc']
oddities([123]) == [123]
oddities([]) == []
```



### Understand the problem

```
- Input:
  - an Array
- Output:
  - an Array that contains every other element of an Array that is passed in as an argument
    - The values in the returned list should be those values that are in the 1st, 3rd, 5th, and so on indexes of the argument Array
```

### Tests Cases

```ruby
oddities([2, 3, 4, 5, 6]) == [2, 4, 6]
oddities(['abc', 'def']) == ['abc']
oddities([123]) == [123]
oddities([]) == []
```

### Data Structures

```
- Input:
  - an Array
- Output:
  - an Array
```

### Algorithm

```
- Iterate though the input Array:
  - Add element to the result Array only if element index is odd (1st, 3rd, 5th...)
- Return result Array
```



#### Further Exploration

Write a companion method that returns the 2nd, 4th, 6th, and so on elements of an array.

Try to solve this exercise in at least 2 additional ways.