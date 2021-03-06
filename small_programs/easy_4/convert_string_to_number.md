# Convert a String to a Number!

The `String#to_i` method converts a string of numeric characters (including an optional plus or minus sign) to an `Integer`. `String#to_i` and the `Integer` constructor (`Integer()`) behave similarly. In this exercise, you will create a method that does the same thing.

Write a method that takes a String of digits, and returns the appropriate number as an integer. You may not use any of the methods mentioned above.

For now, do not worry about leading `+` or `-` signs, nor should you worry about invalid characters; assume all characters will be numeric.

You may not use any of the standard conversion methods available in Ruby, such as `String#to_i`, `Integer()`, etc. Your method should do this the old-fashioned way and calculate the result by analyzing the characters in the string.

Examples

```ruby
string_to_integer('4321') == 4321
string_to_integer('570') == 570
```



### Understand the problem

```
- Input:
  - a string of digits (assume all characters are numeric)
- Output:
  - Appropriate integer
```

### Tests Cases

```ruby
string_to_integer('4321') == 4321
string_to_integer('570') == 570
string_to_integer('0') == 0
```

### Data Structures

```
- Input:
  - a string of digits
- Output:
  - An integer
```

### Algorithm

```
- Create hash to convert a string digit to a number (0..9)
- Reverse the string
- Convert to an array of chars
- Number = 0
- Iterate through the array with index
  - For each element, compute
    - number += hash[array[index]] * 10**index
- Return number
```



#### Further Exploration

Write a `hexadecimal_to_integer` method that converts a string representing a hexadecimal number to its integer value.

Example:

```
hexadecimal_to_integer('4D9f') == 19871
```