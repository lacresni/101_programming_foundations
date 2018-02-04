# Stringy Strings

Write a method that takes one argument, a positive integer, and returns a string of alternating 1s and 0s, always starting with 1. The length of the string should match the given integer.

Examples:

```ruby
puts stringy(6) == '101010'
puts stringy(9) == '101010101'
puts stringy(4) == '1010'
puts stringy(7) == '1010101'
```

The tests above should print `true`.



### Understand the problem

```
- Input:
  - A positive integer
- Output:
  - A string:
    - Alternating 1s and 0s, always starting with 1
    - The length of the string should match the given integer
```

### Tests Cases

```ruby
puts stringy(6) == '101010'
puts stringy(9) == '101010101'
puts stringy(4) == '1010'
puts stringy(7) == '1010101'
puts stringy(0) == ''
```

The tests above should print `true`.

### Data Structures

```
- Input:
  - A positive integer
- Output:
  - A string
```

### Algorithm

```
- Create an empty string
- Loop 'n' times (from 0 to n-1)
  - If 'index' is even, add '1' to string
  - else add '0' to string
- Return string
```



#### Further Exploration

Modify `stringy` so it takes an optional argument that defaults to `1`. If the method is called with this argument set to `0`, the method should return a String of alternating 0s and 1s, but starting with `0` instead of `1`.