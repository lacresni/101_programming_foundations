# Swap Case

Write a method that takes a string as an argument and returns a new string in which every uppercase letter is replaced by its lowercase version, and every lowercase letter by its uppercase version. All other characters should be unchanged.

You may not use `String#swapcase`; write your own version of this method.

Example:

```ruby
swapcase('CamelCase') == 'cAMELcASE'
swapcase('Tonight on XYZ-TV') == 'tONIGHT ON xyz-tv'
```



### Understand the problem

```
- Input:
  - A string
- Output:
  - A new string
    - every uppercase letter is replaced by its lowercase version
    - every lowercase letter by its uppercase version
    - all other characters should be unchanged
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
  - A string
```

### Algorithm

```
- Write a swapcharcase method with char as an argument
  - if char is in (a-z) return char.upcase
  - if char is in (A-Z) return char.downcase
  - else return char
  
- Create an empty string
- Iterate through each characters
  - call swapcharcase and add returned value to new string
```
