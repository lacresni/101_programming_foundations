# Convert a Signed Number to a String!

In the previous exercise, you developed a method that converts non-negative numbers to strings. In this exercise, you're going to extend that method by adding the ability to represent negative numbers as well.

Write a method that takes an integer, and converts it to a string representation.

You may not use any of the standard conversion methods available in Ruby, such as `Integer#to_s`, `String()`, `Kernel#format`, etc. You may, however, use `integer_to_string` from the previous exercise.

Examples

```ruby
signed_integer_to_string(4321) == '+4321'
signed_integer_to_string(-123) == '-123'
signed_integer_to_string(0) == '0'
```



### Understand the problem

```
- Input:
  - An integer
- Output:
  - A String (integer conversion) 
```

### Tests Cases

```
See above
```

### Data Structures

```
- Input:
  - An integer
- Output:
  - A String (integer conversion)
```

### Algorithm

```
- Reuse previous exercise method 'integer_to_string' to get string conversion
  - Pass integer absolute value to 'integer_to_string' method
- If integer is negative
  - prepend '-' sign
- Else if integer is positive
  - prepend '+' sign
- Return string
```



#### LaunchSchool Solution

```ruby
def signed_integer_to_string(number)
  case number <=> 0
  when -1 then "-#{integer_to_string(-number)}"
  when +1 then "+#{integer_to_string(number)}"
  else         integer_to_string(number)
  end
end
```

#### Further Exploration

Refactor our solution to reduce the 3 `integer_to_string` calls to just one.

```ruby
def signed_integer_to_string(number)
  prefix = ''
  abs = number
  case number <=> 0
  when -1 
    prefix = "-"
    abs = -number
  when +1 then prefix = "+"
  end
  "#{prefix}#{integer_to_string(abs)}"
end
```

