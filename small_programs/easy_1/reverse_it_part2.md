# Reverse It (Part 2)

Write a method that takes one argument, a string containing one or more words, and returns the given string with all five or more letter words reversed. Each string will consist of only letters and spaces. Spaces should be included only when more than one word is present.

Examples:

```ruby
puts reverse_words('Professional')          # => lanoisseforP
puts reverse_words('Walk around the block') # => Walk dnuora the kcolb
puts reverse_words('Launch School')         # => hcnuaL loohcS
```



### Understand the problem

```
- Input:
  - a string containing one or more word
  	- string will consist of only letters and spaces
  	- spaces should be included only when more than one word is present
- Output:
  - the same string with all five or more letter words reversed
```

### Tests Cases

```ruby
puts reverse_words('Professional') == 'lanoisseforP'
puts reverse_words('Walk around the block') == 'Walk dnuora the kcolb'
puts reverse_words('Launch School') == 'hcnuaL loohcS'

=> "The tests above should print true."
```

### Data Structures

```
- Input:
  - a string
- Output:
  - Use an intermediate array of strings
  - Joined string 
```

### Algorithm

```
- Split the input string into an array of strings
- For each element in the array of strings
  - Reverse the current string element if its size >= 5
- Join the elements into a string 
  - separated by a space only when size of array of strings is greater than one
```

