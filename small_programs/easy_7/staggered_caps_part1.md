# Staggered Caps (Part 1)

Write a method that takes a String as an argument, and returns a new String that contains the original value using a staggered capitalization scheme in which every other character is capitalized, and the remaining characters are lowercase. Characters that are not letters should not be changed, but count as characters when switching between upper and lowercase.

Example:

```ruby
staggered_case('I Love Launch School!') == 'I LoVe lAuNcH ScHoOl!'
staggered_case('ALL_CAPS') == 'AlL_CaPs'
staggered_case('ignore 77 the 444 numbers') == 'IgNoRe 77 ThE 444 NuMbErS'
```

### Understand the problem

```
- Input:
  - A string
- Output:
  - A new string using a staggered capitalization scheme (first letter is capitalized)
    - every other character is capitalized, and the remaining characters are lowercase
    - Characters that are not letters should not be changed, but count as characters when switching between upper and lowercase
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
- Create empty string
- Iterate through the string with index
  - For each character
    - Capitalize if index is even and add to new string
    - Downcase if index is odd add to new string
- Return new string
```



#### Further Exploration

Modify this method so the caller can request that the first character be downcased rather than upcased? If the first character is downcased, then the second character should be upcased, and so on.

Hint: Use a keyword argument.