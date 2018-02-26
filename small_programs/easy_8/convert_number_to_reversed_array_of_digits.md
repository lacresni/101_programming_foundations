# Convert number to reversed array of digits

Write a method that takes a positive integer as an argument and returns that number with its digits reversed. Examples:

```ruby
reversed_number(12345) == 54321
reversed_number(12213) == 31221
reversed_number(456) == 654
reversed_number(12000) == 21 # Note that zeros get dropped!
reversed_number(1) == 1
```

### Understand the problem

```
- Input:
  - A positive integer
- Output:
  - An integer with its digits reversed
```

### Tests Cases

```
See above
```

### Data Structures

```
- Input:
  - A positive integer
- Intermediate:
  - A string
- Output:
  - An integer
```

### Algorithm

```
- Convert integer to string
- Reverse string
- Convert string to integer
```

