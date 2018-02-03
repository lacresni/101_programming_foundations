# List of Digits

Write a method that takes one argument, a positive integer, and returns a list of the digits in the number.

Examples:

```ruby
puts digit_list(12345) == [1, 2, 3, 4, 5]     # => true
puts digit_list(7) == [7]                     # => true
puts digit_list(375290) == [3, 7, 5, 2, 9, 0] # => true
puts digit_list(444) == [4, 4, 4]             # => true
```



### Understand the problem

```
- Input:
  - a positive integer
- Output:
  - a list of the digits in the number
```

### Tests Cases

```ruby
puts digit_list(12345) == [1, 2, 3, 4, 5]     # => true
puts digit_list(7) == [7]                     # => true
puts digit_list(375290) == [3, 7, 5, 2, 9, 0] # => true
puts digit_list(444) == [4, 4, 4]             # => true
puts digit_list(-444) == []             	  # => false
puts digit_list("str") == []             	  # => false
```

### Data Structures

```
- Input:
  - a positive integer
- Output:
  - an array containing each digit in the number
```

### Algorithm

```
- Convert integer into string
- Split string to each digit char
- Convert each digit char into an integer
```



#### Further Exploration

Find where your Ruby stores Gems, and search the Gems you have installed for uses of the `&:method_name` construction. See if you can figure out what is going on at that point in the code.

```ruby
number.to_s.chars.map(&:to_i)
```

**Under the hood**: The `&` operator is actually not as 'magic' as it might appear when you first begin using it. All it does is call `.to_proc` on the object. The above example works equivalently to `block = (:to_i).to_proc`, followed by `number.to_s.chars.map(&block)`

**Note**: I've found that it should have been included into `ampex` gem but it looks like this one is not part of the gems installed… 

>  This problem is for people with some familiarity with searching files from the command line. You will also need to know where Ruby stores your Gems on your system. See [our Core Ruby Tools book](https://launchschool.com/books/core_ruby_tools/read/gems#gemsrubyandyourcomputer) if you need a bit of help tracking down where those Gems are.