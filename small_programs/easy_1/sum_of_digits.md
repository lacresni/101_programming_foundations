# Sum of Digits

Write a method that takes one argument, a positive integer, and returns the sum of its digits.

Examples:

```ruby
puts sum(23) == 5
puts sum(496) == 19
puts sum(123_456_789) == 45
```

The tests above should print `true`.

For a challenge, try writing this without any basic looping constructs (`while`, `until`, `loop`, and `each`).



### Understand the problem

```
- Input:
  - A positive integer
- Output:
  - Returns the sum of its digits
```

### Tests Cases

```ruby
puts sum(23) == 5
puts sum(496) == 19
puts sum(123_456_789) == 45
```

The tests above should print `true`.

### Data Structures

```
- Input:
  - A positive integer
- Output:
  - An integer representing the sum of its digits
```

### Algorithm

```
- Transform integer into a string
- Split string to extract each chars into an array of chars
- Map the array of chars to an array of integers
- Sum the elements of the array of integers
- Return the sum
```
