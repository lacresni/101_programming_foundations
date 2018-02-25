# Palindromic Substrings

Write a method that returns a list of all substrings of a string that are palindromic. That is, each substring must consist of the same sequence of characters forwards as it does backwards. The return value should be arranged in the same sequence as the substrings appear in the string. Duplicate palindromes should be included multiple times.

You may (and should) use the `substrings` method you wrote in the previous exercise.

For the purposes of this exercise, you should consider all characters and pay attention to case; that is, `"AbcbA"` is a palindrome, but neither `"Abcba"` nor `"Abc-bA"` are. In addition, assume that single characters are not palindromes.

Examples:

```ruby
palindromes('abcd') == []
palindromes('madam') == ['madam', 'ada']
palindromes('hello-madam-did-madam-goodbye') == [
  'll', '-madam-', '-madam-did-madam-', 'madam', 'madam-did-madam', 'ada',
  'adam-did-mada', 'dam-did-mad', 'am-did-ma', 'm-did-m', '-did-', 'did',
  '-madam-', 'madam', 'ada', 'oo'
]
palindromes('knitting cassettes') == [
  'nittin', 'itti', 'tt', 'ss', 'settes', 'ette', 'tt'
]
```



### Understand the problem

```
- Input:
  - A string
- Output:
  - A list of all substrings of a string that are palindromic
  - The return value should be arranged in the same sequence as the substrings appear in the string
  - Duplicate palindromes should be included multiple times.
  - Pay attention to case
  - Assume that single characters are not palindromes.
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
  - An array of strings
```

### Algorithm

```
- Get all substrings from input string with 'substrings' method
  - Store in an array
- Select all strings that are palindromic in the substrings array
  - If substring size is one, reject it
  - Compare substring with reversed substring for selection
```



#### Further Exploration

Can you modify this method (and/or its predecessors) to ignore non-alphanumeric characters and case?