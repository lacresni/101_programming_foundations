# How long are you?

Write a method that takes a string as an argument, and returns an Array that contains every word from the string, to which you have appended a space and the word length.

You may assume that words in the string are separated by exactly one space, and that any substring of non-space characters is a word.

Examples

```ruby
word_lengths("cow sheep chicken") == ["cow 3", "sheep 5", "chicken 7"]

word_lengths("baseball hot dogs and apple pie") ==
  ["baseball 8", "hot 3", "dogs 4", "and 3", "apple 5", "pie 3"]

word_lengths("It ain't easy, is it?") == ["It 2", "ain't 5", "easy, 5", "is 2", "it? 3"]

word_lengths("Supercalifragilisticexpialidocious") ==
  ["Supercalifragilisticexpialidocious 34"]

word_lengths("") == []
```



### Understand the problem

```
- Input:
  - A string
    - words in the string are separated by exactly one space
    - any substring of non-space characters is a word
- Output:
  - An array of words
   - to which you have appended a space and the word length 
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
  - An array of words
```

### Algorithm

```
- Split the string into an array of words (separator is a space)
- Iterate through the array
  - For each word
    - Return the word concatenated with ' ' + word.size
```
