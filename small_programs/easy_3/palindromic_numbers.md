# Palindromic Numbers

Write a method that returns true if its integer argument is palindromic, false otherwise. A palindromic number reads the same forwards and backwards.

Examples:

```ruby
palindromic_number?(34543) == true
palindromic_number?(123210) == false
palindromic_number?(22) == true
palindromic_number?(5) == true
```



### Understand the problem

```
- Input:
  - Integer
- Output:
  - Boolean
    - true if Integer is palindromic (A palindromic number reads the same forwards and backwards)
    - false otherwise 
```

### Tests Cases

```ruby
palindromic_number?(34543) == true
palindromic_number?(123210) == false
palindromic_number?(22) == true
palindromic_number?(5) == true
```

### Data Structures

```
- Input:
  - Integer
- Output:
  - Boolean
```

### Algorithm

```
- Convert integer into a string
- Convert string into an array of chars
- Compare array of chars with reversed array of chars
```



#### Further Exploration

Suppose your number begins with one or more 0s. Will your method still work? 

=> No, it won't work anymore

Why or why not?

=> Because Ruby considers we've entered an **octal value** instead of a decimal, so the integer is interpreted and transformed to a decimal value when passed as an argument.

Is there any way to address this?

We could pass **our integer as a string** in the method. In that case, Ruby won't interpret the value as an octal representation.

