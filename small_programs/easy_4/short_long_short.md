# Short Long Short

Write a method that takes two strings as arguments, determines the longest of the two strings, and then returns the result of concatenating the shorter string, the longer string, and the shorter string once again. You may assume that the strings are of different lengths.

Examples:

```ruby
short_long_short('abc', 'defgh') == "abcdefghabc"
short_long_short('abcde', 'fgh') == "fghabcdefgh"
short_long_short('', 'xyz') == "xyz"
```



### Understand the problem

```
- Input:
  - Two strings
- Output:
  - String
    - Concatenating the shorter string, the longer string, and the shorter string once again
    - Assume strings have different lengths
```

### Tests Cases

```ruby
short_long_short('abc', 'defgh') == "abcdefghabc"
short_long_short('abcde', 'fgh') == "fghabcdefgh"
short_long_short('', 'xyz') == "xyz"
```

### Data Structures

```
- Input:
  - Two strings
- Output:
  - String
```

### Algorithm

```
- Compare string lengths
  - Save shortest
  - Save longest
- Return a new string by concatenating the shorter string, the longer string, and the shorter string once again
```
