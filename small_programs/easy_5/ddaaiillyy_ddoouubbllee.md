# ddaaiillyy ddoouubbllee

Write a method that takes a string argument and returns a new string that contains the value of the original string with all consecutive duplicate characters collapsed into a single character. You may not use `String#squeeze` or `String#squeeze!`.

Examples:

```ruby
crunch('ddaaiillyy ddoouubbllee') == 'daily double'
crunch('4444abcabccba') == '4abcabcba'
crunch('ggggggggggggggg') == 'g'
crunch('a') == 'a'
crunch('') == ''
```

### Understand the problem

```
- Input:
  - A string argument
- Output:
  - A new string
    - Contains the value of the original string with all consecutive duplicate characters collapsed into a single character
      - You may not use String#squeeze or String#squeeze!
```

### Tests Cases

```
See above
```

### Data Structures

```
- Input:
  - A string argument
- Output:
  - A new string
```

### Algorithm

```
- Transforn string into an array of chars
- Create an empty string for result
  - Iterate through the array
    - For each char
      - Add to result string if previous char is different than last char in result
```



#### Further Exploration

You may have noticed that we continue iterating until `index` points past the end of the string. As a result, on the last iteration `text[index]` is the last character in `text`, while `text[index + 1]` is `nil`. Why do we do this? What happens if we stop iterating when `index` is equal to `text.length - 1`?

=> If we stop when `index` is equal to `text.length - 1`, the last character will be missing in the returned value

Can you determine why we didn't use `String#each_char` or `String#chars` to iterate through the string? 

=> Because we need an index for comparison with previous/next value

How would you update this method to use `String#each_char` or `String#chars`?

=> See my solution in ruby file

You can solve this problem using regular expressions (see the `Regexp` module documentation). For a fun challenge, give this a try with regular expressions. Can you think of other solutions besides regular expressions?

```ruby
'ddaaiillyy ddoouubbllee'.gsub(/(.)\1+/, '\1')
```

* '.' is used for any character
* '+' means "One or more times"
* Parentheses can be used for *capturing*.
  * '\1' allows to reuse for later