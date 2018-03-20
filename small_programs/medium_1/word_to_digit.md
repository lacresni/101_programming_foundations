# Word to Digit

Write a method that takes a sentence string as input, and returns the same string with any sequence of the words 'zero', 'one', 'two', 'three', 'four', 'five', 'six', 'seven', 'eight', 'nine' converted to a string of digits.

Example:

```
word_to_digit('Please call me at five five five one two three four. Thanks.') == 'Please call me at 5 5 5 1 2 3 4. Thanks.'
```



### Understand the problem

```
- Input:
  - a sentence string
- Output:
  - the same string with any sequence of the words 'zero', 'one', 'two', 'three', 'four', 'five', 'six', 'seven', 'eight', 'nine' converted to a string of digits.
```

### Tests Cases

```
See above
```

### Data Structures

```
- Input:
  - a sentence string
- Intermediate
  - an array of strings
- Output:
  - the same string
```

### Algorithm

```
- Create a hash for translating word to digit
- Transform string into an array of string
- Iterate through the array (use map for transformation)
  - If word matches one the translation hash key
    - Replace by corresponding digit
    - Use given word
- Caution with final punctuation...
```
