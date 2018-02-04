# Reverse It (Part 1)

Write a method that takes one argument, a string, and returns the same string with the words in reverse order.

Examples:

```ruby
puts reverse_sentence('') == ''
puts reverse_sentence('Hello World') == 'World Hello'
puts reverse_sentence('Reverse these words') == 'words these Reverse'
```

The tests above should print `true`.



### Understand the problem

```
- Input:
  - a string
- Output:
  - the same string with the words in reverse order
```

### Tests Cases

```ruby
puts reverse_sentence('') == ''
puts reverse_sentence('Hello World') == 'World Hello'
puts reverse_sentence('Reverse these words') == 'words these Reverse'

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
- Reverse the array of strings elements
- Join the elements into a string separated by a space
```
