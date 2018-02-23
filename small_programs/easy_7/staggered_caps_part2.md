# Staggered Caps (Part 2)

Modify the method from the previous exercise so it ignores non-alphabetic characters when determining whether it should uppercase or lowercase each letter. The non-alphabetic characters should still be included in the return value; they just don't count when toggling the desired case.

Example:

```ruby
staggered_case('I Love Launch School!') == 'I lOvE lAuNcH sChOoL!'
staggered_case('ALL CAPS') == 'AlL cApS'
staggered_case('ignore 77 the 444 numbers') == 'IgNoRe 77 ThE 444 nUmBeRs'
```

### Understand the problem

```
- Input:
  - A string
- Output:
  - A new string using a staggered capitalization scheme (first letter is capitalized)
    - every other character is capitalized, and the remaining characters are lowercase
    - Characters that are not letters should not be changed, but they just don't count when toggling the desired case
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
- Initialize boolean value need_cap = true
- Iterate through the string with index
  - For each character, check if char is in (a-z) or (A-Z)
    - If yes
      - Capitalize if need_cap == true and add to new string
        - Switch need_cap to false
      - Downcase if need_cap == false and add to new string
        - Switch need_cap to true
    - If no, add to new string
- Return new string
```

#### Further Exploration

Modify this method so the caller can determine whether non-alphabetic characters should be counted when determining the upper/lowercase state. That is, you want a method that can perform the same actions that this method does, or operates like the previous version.

Hint: Use a keyword argument.