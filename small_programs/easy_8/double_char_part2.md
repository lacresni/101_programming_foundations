# Double Char (Part 2)

Write a method that takes a string, and returns a new string in which every consonant character is doubled. Vowels (a,e,i,o,u), digits, punctuation, and whitespace should not be doubled.

Examples:

```ruby
double_consonants('String') == "SSttrrinngg"
double_consonants("Hello-World!") == "HHellllo-WWorrlldd!"
double_consonants("July 4th") == "JJullyy 4tthh"
double_consonants('') == ""
```



### Understand the problem

```
- Input:
  - A string
- Output:
  - A new string in which every consonant character is doubled
    - Vowels (a,e,i,o,u), digits, punctuation, and whitespace should not be doubled
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
  - A new string
```

### Algorithm

```
- Create a valid_char table
  - Contains values from 'a' to 'z'
  - Delete vowels 'aeiou'
- Create an empty string for reply
- Iterate through input string
  - For every character
    - Check if it is valid
      - If yes, add character twice in reply string
- Return reply string
```
