# Fibonacci Number Location By Length

The Fibonacci series is a series of numbers (1, 1, 2, 3, 5, 8, 13, 21, ...) such that the first 2 numbers are 1 by definition, and each subsequent number is the sum of the two previous numbers. This series appears throughout the natural world.

Computationally, the Fibonacci series is a very simple series, but the results grow at an incredibly rapid rate. For example, the 100th Fibonacci number is 354,224,848,179,261,915,075 -- that's enormous, especially considering that it takes 6 iterations before it generates the first 2 digit number.

Write a method that calculates and returns the index of the first Fibonacci number that has the number of digits specified as an argument. (The first Fibonacci number has index 1.)

Examples:

```ruby
find_fibonacci_index_by_length(2) == 7
find_fibonacci_index_by_length(10) == 45
find_fibonacci_index_by_length(100) == 476
find_fibonacci_index_by_length(1000) == 4782
find_fibonacci_index_by_length(10000) == 47847
```

You may assume that the argument is always greater than or equal to 2.

### Understand the problem

```
- Input:
  - Integer
    - number of digits of the first Fibonacci number
    - always greater than or equal to 2
- Output:
  - Integer
    - Index of the first Fibonacci number that has the number of digits specified as an argument.
```

### Tests Cases

```
See above
```

### Data Structures

```
- Input:
  - Integer
- Output:
  - Integer
```

### Abstraction

```
- Compute Fibonacci_number
- Compare number of digits of returned value
```

### Algorithm

```
- Compute Fibonacci number(n)
  - if n <= 1 return 1
  - Fibonacci(n-1) + Fibonacci(n-2)
- Compare number of digits of returned value
  - Transform integer to string and get size
  
- loop do 
  - Compute Fibonacci nb
  - Compare number of digits of returned value
    - break if number of digits == input integer
```

