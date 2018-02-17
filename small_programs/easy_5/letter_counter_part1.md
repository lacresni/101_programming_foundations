# Letter Counter (Part 1)

Write a method that takes a string with one or more space separated words and returns a hash that shows the number of words of different sizes.

Words consist of any string of characters that do not include a space.

Examples:

```ruby
word_sizes('Four score and seven.') == { 3 => 1, 4 => 1, 5 => 1, 6 => 1 }
word_sizes('Hey diddle diddle, the cat and the fiddle!') == { 3 => 5, 6 => 1, 7 => 2 }
word_sizes("What's up doc?") == { 6 => 1, 2 => 1, 4 => 1 }
word_sizes('') == {}
```

### Understand the problem

```
- Input:
  - A string with one or more space separated words
- Output:
  - A hash that shows the number of words of different sizes
    - word = any string of characters that do not include a space
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
    - Compute its size
    - Fill hash by using size as a key and increment its value by one
```

#### Further Exploration

Take some time to read about `Hash::new` to learn about the different ways to initialize a hash with default values.

If this hash is subsequently accessed by a key that doesn't correspond to a hash entry, the value returned depends on the style of `new` used to create the hash.

* new → new_hash
  * The access returns `nil`
* new(obj) → new_hash
  * If *obj* is specified, this single object will be used for all *default values*.
* new {|hash, key| block } → new_hash
  * If a block is specified, it will be called with the hash object and the key, and should return the default value.

```ruby
# While this creates a new default object each time
h = Hash.new { |hash, key| hash[key] = "Go Fish: #{key}" }
```

