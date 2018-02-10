# Squaring an Argument

Using the `multiply` method from the "Multiplying Two Numbers" problem, write a method that computes the square of its argument (the square is the result of multiplying a number by itself).

Example:

```ruby
square(5) == 25
square(-8) == 64
```



### Understand the problem

```
- Input:
  - Integer
- Output:
  - square of input Integer (using multiply method from previous exercise)
```

### Tests Cases

```
square(5) == 25
square(-8) == 64
```

### Data Structures

```
- Input:
  - Integer
- Output:
  - Integer
```

### Algorithm

```
- Get argument of square method
  - call #multiply method by passing square parameter as arguments
- Return result
```



#### Further Exploration

What if we wanted generalize this method to a "power to the n" type method: cubed, to the 4th power, to the 5th, etc. How would we go about doing so while still using the `multiply` method?