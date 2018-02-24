# Sum of Sums

Write a method that takes an Array of numbers and then returns the sum of the sums of each leading subsequence for that Array. You may assume that the Array always contains at least one number.

Examples:

```ruby
sum_of_sums([3, 5, 2]) == (3) + (3 + 5) + (3 + 5 + 2) # -> (21)
sum_of_sums([1, 5, 7, 3]) == (1) + (1 + 5) + (1 + 5 + 7) + (1 + 5 + 7 + 3) # -> (36)
sum_of_sums([4]) == 4
sum_of_sums([1, 2, 3, 4, 5]) == 35
```

### Understand the problem

```
- Input:
  - An array of numbers (with at least one number)
- Output:
  - An integer
    - The sum of the sums of each leading subsequence for that Array
```

### Tests Cases

```
See above
```

### Data Structures

```
- Input:
  - An array of numbers
- Output:
  - An integer
```

### Algorithm

```
- Initialize total_sum variable with 0
- Loop until array is empty
  - Compute sum of all numbers in the array
  - Add that sum to total_sum
  - Remove last element in the array
- Return total_sum  
```
