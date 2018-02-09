# Multiplying Two Numbers

Create a method that takes two arguments, multiplies them together, and returns the result.

Example:

```ruby
multiply(5, 3) == 15
```



### Understand the problem

```
- Input:
  - 2 integers
- Output:
  - Result of multiplication of the 2 numbers
```

### Tests Cases

```
multiply(5, 3) == 15	=> true
```

### Data Structures

```
- Input:
  - 2 integers
- Output:
  - Integer
```

### Algorithm

```
- Get the two Integer arguments
- Multiply the two Integers
- Return the result
```



#### Further Exploration

For fun: what happens if the first argument is an `Array`? What do you think is happening here?

```
p multiply([5, 3], 2)
# => [5, 3, 5, 3]
```

=> According to Ruby documentation, `Array#*` returns a new array built by concatenating the `int` copies of `self`.