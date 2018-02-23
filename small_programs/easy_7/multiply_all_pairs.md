# Multiply All Pairs

Write a method that takes two Array arguments in which each Array contains a list of numbers, and returns a new Array that contains the product of every pair of numbers that can be formed between the elements of the two Arrays. The results should be sorted by increasing value.

You may assume that neither argument is an empty Array.

Examples:

```ruby
multiply_all_pairs([2, 4], [4, 3, 1, 2]) == [2, 4, 4, 6, 8, 8, 12, 16]
```



### Understand the problem

```
- Input:
  - Two arrays containing a list of numbers
    - Neither is an empty array
- Output:
  - A new array containing the product of every pair of numbers that can be formed between the elements of the two Arrays
    - The results should be sorted by increasing value.
```

### Tests Cases

```
See above
```

### Data Structures

```
- Input:
  - Two arrays
- Output:
  - A new array
```

### Algorithm

```
- Iterate through first array
  - For each element
    - Iterate through second array
      - For each element, compute element1 * element2
- Flatten the two arrays of results
- Sort the final array
```
