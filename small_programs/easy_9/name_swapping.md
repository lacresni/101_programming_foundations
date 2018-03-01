# Name Swapping

Write a method that takes a first name, a space, and a last name passed as a single String argument, and returns a string that contains the last name, a comma, a space, and the first name.

Examples

```ruby
swap_name('Joe Roberts') == 'Roberts, Joe'
```



### Understand the problem

```
- Input:
  - A string formatted as a first name, a space, and a last name
- Output:
  - A string formatted as the last name, a comma, a space, and the first name
```

### Tests Cases

```ruby
swap_name('Joe Roberts') == 'Roberts, Joe'
```

### Data Structures

```
- Input:
  - A string
- Output:
  - A string
```

### Algorithm

```
- Split the string into an array of words
- Reverse the array
- Join the array with ', ' separator
```
