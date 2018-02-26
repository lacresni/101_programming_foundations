# Get The Middle Character

Write a method that takes a non-empty string argument, and returns the middle character or characters of the argument. If the argument has an odd length, you should return exactly one character. If the argument has an even length, you should return exactly two characters.

Examples:

```ruby
center_of('I love ruby') == 'e'
center_of('Launch School') == ' '
center_of('Launch') == 'un'
center_of('Launchschool') == 'hs'
center_of('x') == 'x'
```



### Understand the problem

```
- Input:
  - A non empty string
- Output:
  - A string containing the middle character or characters of the argument:
    - If the argument has an odd length, you should return exactly one character
    - If the argument has an even length, you should return exactly two characters
```

### Tests Cases

```
See above
```

### Data Structures

```
- Input:
  - A non empty string
- Output:
  - A string
```

### Algorithm

```
- Compute input string size
- If size is odd, get middle character with string[size / 2]
- else, return two characters with string[(size / 2) - 1, 2]
```
