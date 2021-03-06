# Rotation (Part 2)

Write a method that can rotate the last `n` digits of a number. For example:

```ruby
rotate_rightmost_digits(735291, 1) == 735291
rotate_rightmost_digits(735291, 2) == 735219
rotate_rightmost_digits(735291, 3) == 735912
rotate_rightmost_digits(735291, 4) == 732915
rotate_rightmost_digits(735291, 5) == 752913
rotate_rightmost_digits(735291, 6) == 352917
```

Note that rotating just 1 digit results in the original number being returned.

You may use the `rotate_array` method from the previous exercise if you want. (Recommended!)

You may assume that `n` is always a positive integer.



### Understand the problem

```
- Input:
  - An integer
  - An integer 'n' (always positive)
- Output:
  - An integer with the last n digits of a number rotated
```

### Tests Cases

```
See above
```

### Data Structures

```
- Input:
  - An integer
  - An integer
- Intermediate
  - An array
- Output:
  - An integer
```

### Algorithm

```
- Convert integer to an array
- Partition array to 
  - rightmost substring (length = 'n')
  - leftmost substring (length = array length - 'n')
- Rotate rightmost substring
- Concatenate leftmost and rotated rightmost substrings
```
