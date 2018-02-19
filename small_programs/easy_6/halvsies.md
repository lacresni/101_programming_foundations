# Halvsies

Write a method that takes an Array as an argument, and returns two Arrays that contain the first half and second half of the original Array, respectively. If the original array contains an odd number of elements, the middle element should be placed in the first half Array.

Examples:

```ruby
halvsies([1, 2, 3, 4]) == [[1, 2], [3, 4]]
halvsies([1, 5, 2, 4, 3]) == [[1, 5, 2], [4, 3]]
halvsies([5]) == [[5], []]
halvsies([]) == [[], []]
```

### Understand the problem

```
- Input:
  - An array
- Output:
  - Two arrays
    - Containing the first half and second half of the original Array, respectively
    - If the original array contains an odd number of elements, the middle element should be placed in the first half Array
```

### Tests Cases

```
See above
```

### Data Structures

```
- Input:
  - An array
- Output:
  - An array with two sub arrays
```

### Algorithm

```
- Compute number of elements
  - First half size = size / 2 if size is even
  - First half size = size / 2 + 1 if size is odd
  - Second half size = size / 2
- Create an empty array result[]
- Slice first half of original array starting from index 0 and first_half_size
- Add returned array to result array
- Slice second half of original array starting from index first_half_size and second_half_size size
- Add returned array to result array
```



#### LaunchSchool Solution

```ruby
def halvsies(array)
  first_half = array.slice(0, (array.size / 2.0).ceil)
  second_half = array.slice(first_half.size, array.size - first_half.size)
  [first_half, second_half]
end
```

#### Further Exploration

Can you explain why our solution divides array.size by 2.0 instead of just 2?

=> This is to force  `array.size / 2.0` to return a float value otherwise it returns an integer that has already been rounded to a potential inferior value.

