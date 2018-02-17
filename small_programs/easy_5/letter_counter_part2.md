# Letter Counter (Part 2)

Modify the `word_sizes` method from the previous exercise to exclude non-letters when determining word size. For instance, the length of `"it's"` is 3, not 4.

Examples

```ruby
word_sizes('Four score and seven.') == { 3 => 1, 4 => 1, 5 => 2 }
word_sizes('Hey diddle diddle, the cat and the fiddle!') == { 3 => 5, 6 => 3 }
word_sizes("What's up doc?") == { 5 => 1, 2 => 1, 3 => 1 }
word_sizes('') == {}
```

### Understand the problem

```
- Input:
  - A string with one or more space separated words
- Output:
  - A hash that shows the number of words of different sizes
    - word = any string of alphabetic characters that do not include a space
```

### Tests Cases

```
See above
```

### Data Structures

```
- Input:
  - A string
- Intermediate: An array of strings
- Output:
  - A hash
```

### Algorithm

```
- Create an empty hash with default value 0
- Split string into an array of words
- Iterate through the array
  - For each word
    - Delete non alphabetic characters
    - Compute its size
    - Fill hash by using size as a key and increment its value by one
```

#### Further Exploration

If you haven't encountered `String#delete` before, take a few minutes to read up on it, and its companion `String#count`(you need to read about `#count` to get all of the information you need to understand `#delete`).



`String#count([other_str]+) → integer`

The intersection of these sets defines the characters to count in `str`. 

* Any `other_str` that starts with a caret `^` is negated. 
* The sequence `c1-c2` means all characters between c1 and c2. 
* The backslash character `\` can be used to escape `^` or `-` and is otherwise ignored unless it appears at the end of a sequence or the end of a `other_str`.

```ruby
a = "hello world"
a.count "lo"                   #=> 5   (nb 'l' + nb 'o')
a.count "lo", "o"              #=> 2   (nb 'o')
```



 `String#delete` returns a copy of *str* with all characters in the intersection of its arguments deleted. 

```ruby
'A string!!'.delete("^a-zA-Z") # => "Astring"
```

