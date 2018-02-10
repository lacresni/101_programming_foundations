# Palindromic Strings (Part 2)

Write another method that returns true if the string passed as an argument is a palindrome, false otherwise. This time, however, your method should be case-insensitive, and it should ignore all non-alphanumeric characters. If you wish, you may simplify things by calling the `palindrome?` method you wrote in the previous exercise.

Examples:

```ruby
real_palindrome?('madam') == true
real_palindrome?('Madam') == true           # (case does not matter)
real_palindrome?("Madam, I'm Adam") == true # (only alphanumerics matter)
real_palindrome?('356653') == true
real_palindrome?('356a653') == true
real_palindrome?('123ab321') == false
```



### Understand the problem

```
- Input:
  - String
- Output:
  - Boolean
    - true if string is a palindrome (case insensitive and ignore all non alphanumeric characters)
    - false otherwise 
```

### Tests Cases

```ruby
real_palindrome?('madam') == true
real_palindrome?('Madam') == true           # (case does not matter)
real_palindrome?("Madam, I'm Adam") == true # (only alphanumerics matter)
real_palindrome?('356653') == true
real_palindrome?('356a653') == true
real_palindrome?('123ab321') == false
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
- Call downcase method on input string to deal with case insentivity
- Convert string into an array of chars
- Iterate though the array
  - Select only alphanumeric characters (a..z and 0..9)
- Join chars into a string
- Call palindrome? method from previous exercise with joined string as an argument
```



### Further Exploration

Read the documentation for `String#delete`, and the closely related `String#count` (you need to read `count` to get all of the information you need for `delete`.)

`String#delete ` documentation is [here](http://ruby-doc.org/core-2.4.1/String.html#method-i-delete)

`String#count` documentation is [here](http://ruby-doc.org/core-2.4.1/String.html#method-i-count)

```ruby
a = "Madam, I'm Adam9874".downcase
 => "madam, i'm adam9874"
a.delete('^a-z0-9')
 => "madamimadam9874"
```

