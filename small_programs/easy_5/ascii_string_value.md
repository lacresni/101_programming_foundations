# ASCII String Value

Write a method that determines and returns the ASCII string value of a string that is passed in as an argument. The ASCII string value is the sum of the ASCII values of every character in the string. (You may use String#ord to determine the ASCII value of a character.)

```ruby
ascii_value('Four score') == 984
ascii_value('Launch School') == 1251
ascii_value('a') == 97
ascii_value('') == 0
```



### Understand the problem

```
- Input:
  - A string
- Output:
  - the ASCII string value 
    - sum of the ASCII values of every character in the string
    - Use String#ord to determine the ASCII value of a character
```

### Tests Cases

```
See above
```

### Data Structures

```
- Input:
  - A string
    - Transform to an array of chars
- Output:
  - An integer
```

### Algorithm

```
- Transform string into an array of chars
- Initialize sum with 0
- Iterate through the array
  - For each character in the array
    - use String#ord to determine the ASCII value of a character
    - add returned value (integer) to sum variable
- Return sum
```



#### Solution

```ruby
def ascii_value(string)
  sum = 0
  string.each_char { |char| sum += char.ord }
  sum
end
```



#### Further Exploration

There is an `Integer` method such that:

```ruby
char.ord.mystery == char
```

where `mystery` is our mystery method. Can you determine what method name should be used in place of `mystery`? 

=> `mystery` is the `Integer#chr` method.

What happens if you try this with a longer string instead of a single character?

=> It just returns the first character of the string. This is because `String#ord` method works only with one-character strings.

