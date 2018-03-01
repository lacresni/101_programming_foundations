# Sequence Count

Create a method that takes two integers as arguments. The first argument is a count, and the second is the first number of a sequence that your method will create. The method should return an Array that contains the same number of elements as the count argument, while the values of each element will be multiples of the starting number.

You may assume that the count argument will always have a value of 0 or greater, while the starting number can be any integer value. If the count is 0, an empty list should be returned.

Examples:

```ruby
sequence(5, 1) == [1, 2, 3, 4, 5]
sequence(4, -7) == [-7, -14, -21, -28]
sequence(3, 0) == [0, 0, 0]
sequence(0, 1000000) == []
```



### Understand the problem

```
- Input:
  - Two integers
    - First argument is a count (having a value of 0 or greater)
    - Second is the first number of a sequence
- Output:
  - An array of integers
    - contains the same number of elements as the count argument
    - the values of each element will be multiples of the starting number
    - If the count is 0, an empty list should be returned
```

### Tests Cases

```
See above
```

### Data Structures

```
- Input:
  - Two integers
- Output:
  - An array of integers
```

### Algorithm

```
- Create an empty array result[]
- Iterate a number of times (use count)
  - On each iteration
    - Append first_nb * (loop + 1) to result
- Return result array
```



#### LaunchSchool Solution

```ruby
def sequence(count, first)
  (1..count).map { |idx| idx * first }
end
```

