# Counting Up

Write a method that takes an integer argument, and returns an Array of all integers, in sequence, between 1 and the argument.

You may assume that the argument will always be a valid integer that is greater than 0.

Examples:

```ruby
sequence(5) == [1, 2, 3, 4, 5]
sequence(3) == [1, 2, 3]
sequence(1) == [1]
```



### Understand the problem

```
- Input:
  - A positive integer
- Output:
  - An array of integers (from 1 to input integer)
```

### Tests Cases

```
See above
```

### Data Structures

```
- Input:
  - A positive integer
- Output:
  - An array of integers
```

### Algorithm

```
- Create a range from 1 to input integer
- Store range values into an array
```



#### Further Exploration

Food for thought: what do you think `sequence` should return if the argument is not greater than 0. For instance, what should you do if the argument is `-1`? Can you alter your method to handle this case?

=> I think it should return an empty array `[]`