# Palindromic Strings (Part 1)

Write a method that returns true if the string passed as an argument is a palindrome, false otherwise. A palindrome reads the same forward and backward. For this exercise, case matters as does punctuation and spaces.

Examples:

```ruby
palindrome?('madam') == true
palindrome?('Madam') == false          # (case matters)
palindrome?("madam i'm adam") == false # (all characters matter)
palindrome?('356653') == true
```



### Understand the problem

```
- Input:
  - String
- Output:
  - Boolean
    - true if string is a palindrome (case matters as well as punctuation and spaces)
    - false otherwise 
```

### Tests Cases

```ruby
palindrome?('madam') == true
palindrome?('Madam') == false          # (case matters)
palindrome?("madam i'm adam") == false # (all characters matter)
palindrome?('356653') == true
```

### Data Structures

```
- Input:
  - String
- Output:
  - Boolean
```

### Algorithm

```
- Create a copy of the input string and reverse it
- Compare original string with reversed string
  - If true then input string is a palindrome
  - If false, string is not a palindrome
```



#### Further Exploration

Write a method that determines whether an array is palindromic; that is, the element values appear in the same sequence both forwards and backwards in the array. Now write a method that determines whether an array or a string is palindromic; that is, write a method that can take either an array or a string argument, and determines whether that argument is a palindrome. You may not use an `if`, `unless`, or `case` statement or modifier.