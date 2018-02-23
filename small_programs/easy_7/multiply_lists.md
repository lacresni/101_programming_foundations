# Multiply Lists

Write a method that takes two Array arguments in which each Array contains a list of numbers, and returns a new Array that contains the product of each pair of numbers from the arguments that have the same index. You may assume that the arguments contain the same number of elements.

Examples:

```ruby
multiply_list([3, 5, 7], [9, 10, 11]) == [27, 50, 77]
```



### Understand the problem

```
- Input:
  - Two arrays containing numbers (same number of elements)
- Output:
  - An array containing the product of each pair of numbers from the arguments that have the same index.
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
- Initialize en empty array product[] 
- Iterate through the first array with index
  - For each number, compute number * array2[index]
    - add product result to product[]
- Return product[] array
```

#### Further Exploration

The `Array#zip` method can be used to produce an extremely compact solution to this method. Read the documentation for `zip`, and see if you can come up with a one line solution (not counting the `def` and `end` lines).

```ruby
def multiply_list(arr1, arr2)
  arr1.zip(arr2).map { |sub_arr| sub_arr.reduce(:*) }
end
```

