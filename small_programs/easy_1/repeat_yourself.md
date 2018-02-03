# Repeat Yourself

Write a method that takes two arguments, a string and a positive integer, and prints the string as many times as the integer indicates.

Example:

```ruby
repeat('Hello', 3)
```

Output:

```
Hello
Hello
Hello
```



### Understand the problem

```
- Input:
  - a string
  - a positive integer
- Output:
  - print the string as many times as the integer indicates
```

### Tests Cases

```
repeat("Hello", 3) => Hello    (3 times)
repeat("Hello", 0) => 
repeat("Hello", -3) => You must provide a positive number!
```

### Data Structures

```
- Input:
  - a string
  - a positive integer
```

### Algorithm

```
- Verify that the integer is not negative
- Loop as many times as the integer indicates
  - Output string
```
