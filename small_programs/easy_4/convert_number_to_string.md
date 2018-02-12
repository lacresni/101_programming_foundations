# Convert a Number to a String!

In the previous two exercises, you developed methods that convert simple numeric strings to signed Integers. In this exercise and the next, you're going to reverse those methods.

Write a method that takes a positive integer or zero, and converts it to a string representation.

You may not use any of the standard conversion methods available in Ruby, such as `Integer#to_s`, `String()`, `Kernel#format`, etc. Your method should do this the old-fashioned way and construct the string by analyzing and manipulating the number.

Examples

```ruby
integer_to_string(4321) == '4321'
integer_to_string(0) == '0'
integer_to_string(5000) == '5000'
```



### Understand the problem

```
- Input:
  - A positive integer (or zero)
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
  - A positive integer (or zero)
- Output:
  - A String (integer conversion)
```

### Algorithm

```
- Create an array for conversions ['0', '1', .. '9']
- Create an empty string
- Loop 
  - Convert number % 10 to a string char with the hash table
  - Add string char to string
  - number /= 10
  - break if number == 0
- Return reversed string
```

#### Solution

```ruby
DIGITS = ['0', '1', '2', '3', '4', '5', '6', '7', '8', '9']

def integer_to_string(number)
  result = ''
  loop do
    number, remainder = number.divmod(10)
    result.prepend(DIGITS[remainder])
    break if number == 0
  end
  result
end
```



#### Further Exploration

One thing to note here is the `String#prepend` method; unlike most string mutating methods, the name of this method does not end with a `!`. However, it is still a mutating method - it changes the string in place.

This is actually pretty common with mutating methods that do not have a corresponding non-mutating form. `chomp!` ends with a `!` because the non-mutating `chomp` is also defined. `prepend` does not end with a `!` because there is no non-mutating form of `prepend`.

How many mutating `String` methods can you find that do not end with a `!`. Can you find any that end with a `!`, but don't have a non-mutating form? 

* `String#concat`, `String#clear`, `String#replace`, `String#insert`, `String#prepend`

Does the `Array` class have any methods that fit this pattern? 

* `Array#clear`, `Array#concat`, `Array#delete`, `Array#fill`, `Array#replace`, `Array#insert`, `Array#pop`, `Array#push`, `Array#shift`, `Array#unshift`

How about the `Hash` class?

* `Hash#clear`, `Hash#delete`, `Hash#replace`, `Hash#shift`, `Hash#store`, `Hash#update`, 