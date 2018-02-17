# Clean up the words

Given a string that consists of some words and an assortment of non-alphabetic characters, write a method that returns that string with all of the non-alphabetic characters replaced by spaces. If one or more non-alphabetic characters occur in a row, you should only have one space in the result (the result should never have consecutive spaces).

Examples:

```ruby
cleanup("---what's my +*& line?") == ' what s my line '
```

### Understand the problem

```
- Input:
  - A string
    - containing some words and an assortment of non-alphabetic characters
- Output:
  - A string with all of the non-alphabetic characters replaced by spaces
    - If one or more non-alphabetic characters occur in a row, you should only have one space in the result
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
  - A string
```

### Algorithm

```
- Create an empty string result
- Iterate through the input string
  - For each char, verify it is an alphabetic character (a-z) or (A-Z)
    - If true, add character to result (result << char)
    - If false, add a space char only if result[-1] != ' '
- Return result string  
```
