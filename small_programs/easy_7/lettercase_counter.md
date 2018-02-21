# Lettercase Counter

Write a method that takes a string, and then returns a hash that contains 3 entries: one represents the number of characters in the string that are lowercase letters, one the number of characters that are uppercase letters, and one the number of characters that are neither.

Examples

```ruby
letter_case_count('abCdef 123') == { lowercase: 5, uppercase: 1, neither: 4 }
letter_case_count('AbCd +Ef') == { lowercase: 3, uppercase: 3, neither: 2 }
letter_case_count('123') == { lowercase: 0, uppercase: 0, neither: 3 }
letter_case_count('') == { lowercase: 0, uppercase: 0, neither: 0 }
```



### Understand the problem

```
- Input:
  - A string
- Output:
  - A hash with 3 entries
    - one represents the number of characters in the string that are lowercase letters
    - one the number of characters that are uppercase letters
    - one the number of characters that are neither
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
  - A hash
```

### Algorithm

```
- Create an empty hash for result with default value 0
- For each char in the input string
  - Check if char is included in (a..z) range
    - if yes, hash[:lowercase] += 1
  - Check if char is included in (A..Z) range
    - if yes, hash[:uppercase] += 1
  - else hash[:neither] += 1
- Return hash
```
