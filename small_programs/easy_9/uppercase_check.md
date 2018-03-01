# Uppercase Check

Write a method that takes a string argument, and returns `true` if all of the alphabetic characters inside the string are uppercase, `false` otherwise. Characters that are not alphabetic should be ignored.

Examples:

```ruby
uppercase?('t') == false
uppercase?('T') == true
uppercase?('Four Score') == false
uppercase?('FOUR SCORE') == true
uppercase?('4SCORE!') == true
uppercase?('') == true
```



### Understand the problem

```
- Input:
  - A string
- Output:
  - A boolean
    - 'true' if all of the alphabetic characters inside the string are uppercase
      - Characters that are not alphabetic should be ignored.
    - 'false' otherwise
```

### Tests Cases

```
See above
```

### Data Structures

```
- Input:
  - A string
- Output:
  - A boolean
```

### Algorithm

```
- Set result = true
- Iterate through the string
  - For each character
    - If character is not alphabetic, ignore
    - If character is downcase, return false
    - else continue
```



#### LaunchSchool Solution

```ruby
def uppercase?(string)
  string == string.upcase
end
```

##### Discussion

The easiest way to solve this problem is to realize that the condition "all of the alphabetic characters...are uppercase" is true only if the string is not altered by converting it to all uppercase. Thus, all we need to is compare `string` with `string.upcase`.



#### Further Exploration

Food for thought: in our examples, we show that `uppercase?` should return `true` if the argument is an empty string. Would it make sense to return `false` instead? Why or why not?

=> I think it would be also perfectly fine to return `false` if argument is an empty string. Both cases are valid. But this case must be clearly defined before implementation because it can be interpreted differently according to people…