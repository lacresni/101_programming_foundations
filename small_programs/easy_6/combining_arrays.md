# Combining Arrays

Write a method that takes two Arrays as arguments, and returns an Array that contains all of the values from the argument Arrays. There should be no duplication of values in the returned Array, even if there are duplicates in the original Arrays.

Example

```ruby
merge([1, 3, 5], [3, 6, 9]) == [1, 3, 5, 6, 9]
```



### Understand the problem

```
- Input:
  - Two arrays
- Output:
  - An array containing all of the values from the argument Arrays
    - no duplication of values in the returned Array even if there are duplicates in the original Arrays
```

### Tests Cases

```ruby
merge([1, 3, 5], [3, 6, 9]) == [1, 3, 5, 6, 9]
merge([], []) == []
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
- Create a new array by concatenating arrays 1 and 2
- Remove duplicates by using #uniq method
```



**LaunchSchool Solution**

```ruby
def merge(array_1, array_2)
  array_1 | array_2
end
```

`ary | other_ary → new_ary`

Set Union — Returns a new array by joining `ary` with `other_ary`, excluding any duplicates and preserving the order from the given arrays.