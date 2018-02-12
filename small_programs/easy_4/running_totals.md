# Running Totals

Write a method that takes an Array of numbers, and returns an Array with the same number of elements, and each element has the running total from the original Array.

Examples:

```ruby
running_total([2, 5, 13]) == [2, 7, 20]
running_total([14, 11, 7, 15, 20]) == [14, 25, 32, 47, 67]
running_total([3]) == [3]
running_total([]) == []
```



### Understand the problem

```
- Input:
  - Array of numbers
- Output:
  - Array of numbers
    - same number of elements
    - each element has the running total from the original Array
```

### Tests Cases

```
See above
```

### Data Structures

```
- Input:
  - Array of numbers
- Output:
  - Array of numbers
```

### Algorithm

```
- Initialize a sum integer with value 0
- Iterate through the array with map method
  - For each element
    - add element value to the sum
    - use sum as returned value
```



#### Further Exploration

Try solving this problem using `Array#each_with_object` or `Enumerable#inject` (note that `Enumerable` methods can be applied to Arrays).

Using `Enumerable#reduce` (equivalent to  `Enumerable#inject` ) 

```ruby
def running_total_with_reduce(int_arr)
  arr = []
  while int_arr.size > 0
    arr.unshift(int_arr.reduce(&:+))
    int_arr.pop
  end
  arr
end
```



Using `Array#each_with_object` 

```ruby
def running_total_each_with_object(int_arr)
  int_arr.each_with_object([]) do |x, arr|
    arr.push(arr.last.to_i + x)
  end
end
```

Note: this doesn't work by passing immutable objects (as integers). Method does not update the value of object after each iteration and **returns the original given object**.