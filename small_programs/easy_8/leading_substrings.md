# Leading Substrings

Write a method that returns a list of all substrings of a string that start at the beginning of the original string. The return value should be arranged in order from shortest to longest substring.

Examples:

```ruby
substrings_at_start('abc') == ['a', 'ab', 'abc']
substrings_at_start('a') == ['a']
substrings_at_start('xyzzy') == ['x', 'xy', 'xyz', 'xyzz', 'xyzzy']
```

### Understand the problem

```
- Input:
  - A string
- Output:
  - An array of strings containing
    - all substrings of a string that start at the beginning of the original string
    - strings should be arranged in order from shortest to longest substring
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
- Create an empty array susbtrings[]
- Iterate string.size number of times
  - Slice the string (0..n)
  - Add sliced string to susbtrings[]
- Return susbtrings[]
```
