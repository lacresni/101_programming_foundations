# Double Char (Part 1)

Write a method that takes a string, and returns a new string in which every character is doubled.

Examples:

```ruby
repeater('Hello') == "HHeelllloo"
repeater("Good job!") == "GGoooodd  jjoobb!!"
repeater('') == ''
```



### Understand the problem

```
- Input:
  - A string
- Output:
  - A new string in which every character is doubled
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
  - A new string
```

### Algorithm

```
- Create an empty string for reply
- Iterate through input string
  - For every character
    - Add character twice in reply string
- Return reply string
```
