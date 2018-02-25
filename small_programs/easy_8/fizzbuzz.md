# fizzbuzz

Write a method that takes two arguments: the first is the starting number, and the second is the ending number. Print out all numbers between the two numbers, except if a number is divisible by 3, print "Fizz", if a number is divisible by 5, print "Buzz", and finally if a number is divisible by 3 and 5, print "FizzBuzz".

Example:

```ruby
fizzbuzz(1, 15) # -> 1, 2, Fizz, 4, Buzz, Fizz, 7, 8, Fizz, Buzz, 11, Fizz, 13, 14, FizzBuzz
```



### Understand the problem

```
- Input:
  - Two integers
- Output:
  - Print out all numbers between the two numbers
    - if a number is divisible by 3, print "Fizz"
    - if a number is divisible by 5, print "Buzz"
    - if a number is divisible by 3 and 5, print "FizzBuzz"
```

### Tests Cases

```
See above
```

### Data Structures

```
- Input:
  - Two integers
- Output:
  - Display strings
```

### Algorithm

```
- Create a range from first integer argument to second integer argument
- Iterate through the range
  - For each element in the range
    - Check if divisible by 15
      - If yes, print out "FizzBuzz"
    - Else check if divisible by 5
      - If yes, print out "Buzz"
    - Else check if divisible by 3
      - If yes, print out "Fizz"
    - Else print out element  
```
