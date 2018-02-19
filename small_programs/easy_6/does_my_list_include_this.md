# Does My List Include This?

Write a method named `include?` that takes an Array and a search value as arguments. This method should return `true` if the search value is in the array, `false` if it is not. You may not use the `Array#include?` method in your solution.

```ruby
include?([1,2,3,4,5], 3) == true
include?([1,2,3,4,5], 6) == false
include?([], 3) == false
include?([nil], nil) == true
include?([], nil) == false
```



### Understand the problem

```
- Input:
  - An array
  - A search value
- Output:
  - A boolean
    - 'true' if search value is in the array
    - 'false' otherwise
    - You may not use the Array#include? method in your solution.
```

### Tests Cases

```
See above
```

### Data Structures

```
- Input:
  - An array
  - A search value (could be any type...)
- Output:
  - A boolean
```

### Algorithm

```
- Index = 0
- Found = false
- while index < arr.size && !Found 
  - Found = true if arr[index] == Search Value
```



#### LaunchSchool Solution

The easy way

```ruby
def include?(array, value)
  !!array.find_index(value)
end
```

A slightly harder way

```ruby
def include?(array, value)
  array.each { |element| return true if value == element }
  false
end
```