# Capitalize Words

Write a method that takes a single String argument and returns a new string that contains the original value of the argument with the first character of every word capitalized and all other letters lowercase.

You may assume that words are any sequence of non-blank characters.

Examples

```ruby
word_cap('four score and seven') == 'Four Score And Seven'
word_cap('the javaScript language') == 'The Javascript Language'
word_cap('this is a "quoted" word') == 'This Is A "quoted" Word'
```



### Understand the problem

```
- Input:
  - A string
- Output:
  - A new string containing the original value of the argument with the first character of every word capitalized and all other letters lowercase
```

### Tests Cases

```
See above
```

### Data Structures

```
- Input:
  - A string
- Intermediate:
  - An array of strings
- Output:
  - A new string
```

### Algorithm

```
- Split the string to retrieve each words
- Iterate through the array of words
  - For each word, capitalize word
- Join returned array by using spaces as a separator
```



#### Further Exploration

Ruby convenient provides the `String#capitalize` method to capitalize strings. Without that method, how would you solve this problem? Try to come up with at least two solutions.