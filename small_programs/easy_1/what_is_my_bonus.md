# What's my Bonus?

Write a method that takes two arguments, a positive integer and a boolean, and calculates the bonus for a given salary. If the boolean is `true`, the bonus should be half of the salary. If the boolean is `false`, the bonus should be `0`.

Examples:

```ruby
puts calculate_bonus(2800, true) == 1400
puts calculate_bonus(1000, false) == 0
puts calculate_bonus(50000, true) == 25000
```

The tests above should print `true`.



### Understand the problem

```
- Input:
  - A positive integer
  - A boolean
- Output:
  - Bonus for a given salary:
    - If the boolean is true, the bonus should be half of the salary.
    - If the boolean is false, the bonus should be 0.
```

### Tests Cases

```ruby
puts calculate_bonus(2800, true) == 1400
puts calculate_bonus(1000, false) == 0
puts calculate_bonus(50000, true) == 25000
puts calculate_bonus(3801, true) == 1900.5
```

The tests above should print `true`.

### Data Structures

```
- Input:
  - A positive integer
  - A boolean
- Output:
  - A float number
```

### Algorithm

```
- Check the boolean:
  - If false, return 0
  - If true, return positive integer / 2.0
```
