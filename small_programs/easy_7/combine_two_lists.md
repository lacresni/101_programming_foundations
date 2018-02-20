# Combine Two Lists

Write a method that combines two Arrays passed in as arguments, and returns a new Array that contains all elements from both Array arguments, with the elements taken in alternation.

You may assume that both input Arrays are non-empty, and that they have the same number of elements.

Example:

```ruby
interleave([1, 2, 3], ['a', 'b', 'c']) == [1, 'a', 2, 'b', 3, 'c']
```



### Understand the problem

```
- Input:
  - Two arrays
- Output:
  - An array containing all elements from both Array arguments, with the elements taken in alternation
  - Assume that both input Arrays are non-empty, and that they have the same number of elements.
```

### Tests Cases

```
See above
```

### Data Structures

```
- Input:
  - Two arrays
- Output:
  - An array
```

### Algorithm

```
- Create an empty array combined_arr[]
- Iterate through first array with index
  - Add element to combined_arr[]
  - Add second_arr[index] element to combined_arr[]
- Return combined_arr[]
```



#### Further Exploration

Take a few minutes to read about `Array#zip`. `#zip` doesn't do the same thing as `interleave`, but it is very close, and more flexible. In fact, `interleave` can be implemented in terms of `zip` and one other method from the `Array` class. See if you can rewrite `interleave` to use `zip`.

```ruby
def interleave(arr1, arr2)
  arr1.zip(arr2).flatten
end
```

