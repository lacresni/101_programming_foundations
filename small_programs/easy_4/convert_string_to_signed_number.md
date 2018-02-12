# Convert a String to a Signed Number!

In the previous exercise, you developed a method that converts simple numeric strings to Integers. In this exercise, you're going to extend that method to work with signed numbers.

Write a method that takes a String of digits, and returns the appropriate number as an integer. The String may have a leading `+` or `-` sign; if the first character is a `+`, your method should return a positive number; if it is a `-`, your method should return a negative number. If no sign is given, you should return a positive number.

You may assume the string will always contain a valid number.

You may not use any of the standard conversion methods available in Ruby, such as `String#to_i`, `Integer()`, etc. You may, however, use the `string_to_integer` method from the previous lesson.

Examples

```ruby
string_to_signed_integer('4321') == 4321
string_to_signed_integer('-570') == -570
string_to_signed_integer('+100') == 100
```



### Understand the problem

```
- Input:
  -  String of digits
    - The String may have a leading '+' or '-' sign
- Output:
  - Corresponding Integer
    - Negative integer if string has a leading '-' sign
    - Positive otherwise
```

### Tests Cases

```ruby
string_to_signed_integer('4321') == 4321
string_to_signed_integer('-570') == -570
string_to_signed_integer('+100') == 100
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
- Remove leading '+' or '-' from string
- Call 'string_to_integer' method from the previous lesson with previous string (without '+' or '-') and assign returned value to result
- Check if input string starts with a '-'
  If yes, multiply 'string_to_integer' result by -1
- Return result
```



**LaunchSchool Solution**

```ruby
def string_to_signed_integer(string)
  case string[0]
  when '-' then -string_to_integer(string[1..-1])
  when '+' then string_to_integer(string[1..-1])
  else          string_to_integer(string)
  end
end
```

The most interesting aspect of this method is the use of `string[1..-1`] to obtain the remainder of the string after a leading `+` or `-`. This notation simply means to extract the characters starting at index 1 of the string (the second character) and ending with the last character (index -1).



#### Further Exploration

In our solution, we call `string[1..-1]` twice, and call `string_to_integer` three times. This is somewhat repetitive. Refactor our solution so it only makes these two calls once each.

```ruby
def string_to_signed_integer(string)
  start_index = 0
  multiplicator = 1
  case string[0]
  when '-'
    start_index = 1
    multiplicator = -1
  when '+' then start_index = 1
  end
  multiplicator * string_to_integer(string[start_index..-1])
end
```

