# Odd

Write a method that takes one integer argument, which may be positive, negative, or zero. This method return `true` if the number's absolute value is odd. You may assume that the argument is a valid integer value.

Examples:

```ruby
puts is_odd?(2)    # => false
puts is_odd?(5)    # => true
puts is_odd?(-17)  # => true
puts is_odd?(-8)   # => false
puts is_odd?(0)    # => false
puts is_odd?(7)    # => true
```

Keep in mind that you're not allowed to use `#odd?` or `#even?` in your solution.



### Understand the problem

```
- Input:
  - an integer
- Output:
  - a boolean that returns true if integer absolute value is odd
```

### Tests Cases

```
puts is_odd?(2)    # => false
puts is_odd?(5)    # => true
puts is_odd?(-17)  # => true
puts is_odd?(-8)   # => false
puts is_odd?(0)    # => false
puts is_odd?(7)    # => true
```

### Data Structures

```
- Input:
  - an integer
- Output:
  - a boolean
```

### Algorithm

```
- Compute integer absolute value
- Check if integer absolute value is odd
  - if odd, return TRUE
  - if even, return FALSE
```
