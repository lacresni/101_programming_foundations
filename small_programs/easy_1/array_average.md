# Array Average

Write a method that takes one argument, an array containing integers, and returns the average of all numbers in the array. The array will never be empty and the numbers will always be positive integers.

Examples:

```ruby
puts average([1, 5, 87, 45, 8, 8]) == 25
puts average([9, 47, 23, 95, 16, 52]) == 40
```

The tests above should print `true`.



### Understand the problem

```
- Input:
  - An array of positive integers
- Output:
  - The average of all numbers in the array
```

### Tests Cases

```ruby
puts average([1, 5, 87, 45, 8, 8]) == 25
puts average([9, 47, 23, 95, 16, 52]) == 40
```

The tests above should print `true`.

### Data Structures

```
- Input:
  - An array of positive integers
- Output:
  - A float returning the average of all numbers in the array
```

### Algorithm

```
- Sum = 0
- Iterate through the array:
  - Add the element value to the sum
- Compute average by sum / number of elements in the array
- Return average
```
