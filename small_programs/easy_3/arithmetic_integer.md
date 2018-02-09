# Arithmetic Integer

Write a program that prompts the user for two positive integers, and then prints the results of the following operations on those two numbers: addition, subtraction, product, quotient, remainder, and power. Do not worry about validating the input.

Example

```
==> Enter the first number:
23
==> Enter the second number:
17
==> 23 + 17 = 40
==> 23 - 17 = 6
==> 23 * 17 = 391
==> 23 / 17 = 1
==> 23 % 17 = 6
==> 23 ** 17 = 141050039560662968926103
```



### Understand the problem

```
- Input:
  - Ask user for two positive integers
- Output:
  - prints the results of the following operations on those two numbers: addition, subtraction, product, quotient, remainder, and power
```

### Tests Cases

```
See above
```

### Data Structures

```
- Input:
  - Two positive integers
- Output:
  - Integers
```

### Algorithm

```
- Input:
  - Ask user for two positive integers
- Output:
  - prints the results of the following operations on those two numbers: addition, subtraction, product, quotient, remainder, and power
```



#### Discussion

There are some edge cases to consider in this exercise. We have to be careful of not having a second number that is zero. What if we wanted to use floats instead of integers? How does this change this problem?

=> Instead of converting input string to Integer, we have to convert to Floats. Then, maybe we need to round the result with two decimal values.