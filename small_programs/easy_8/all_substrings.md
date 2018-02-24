# All Substrings

Write a method that returns a list of all substrings of a string. The returned list should be ordered by where in the string the substring begins. This means that all substrings that start at position 0 should come first, then all substrings that start at position 1, and so on. Since multiple substrings will occur at each position, the substrings at a given position should be returned in order from shortest to longest.

You may (and should) use the `substrings_at_start` method you wrote in the previous exercise:

Examples:

```ruby
substrings('abcde') == [
  'a', 'ab', 'abc', 'abcd', 'abcde', 
  'b', 'bc', 'bcd', 'bcde',
  'c', 'cd', 'cde',
  'd', 'de',
  'e'
]
```

### Understand the problem

```
- Input:
  - A string
- Output:
  - A list of all substrings of a string ordered by where in the string the substring begins
    - all substrings that start at position 0 should come first
    - then all substrings that start at position 1, and so on
    - Since multiple substrings will occur at each position, the substrings at a given position should be returned in order from shortest to longest
    - You may (and should) use the substrings_at_start method you wrote in the previous exercise
```

### Tests Cases

```
See above
```

### Data Structures

```
- Input:
  - A string
- Output:
  - An array of strings
```

### Algorithm

```
- Create an empty array arr_substrings[]
- Iterate number of times (string.size times)
  - Select current substring from string (string[n..string.size-1])
  - Call substrings_at_start(current_substring)
  - Store returned array into arr_substrings[]
- Flatten arr_substrings array
- Return arr_substrings[]
```
