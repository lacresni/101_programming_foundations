# Grocery List

Write a method which takes a grocery list (array) of fruits with quantities and converts it into an array of the correct number of each fruit.

Example:

```ruby
buy_fruit([["apples", 3], ["orange", 1], ["bananas", 2]]) ==
  ["apples", "apples", "apples", "orange", "bananas","bananas"]
```



### Understand the problem

```
- Input:
  - Array of arrays
- Output:
  - Array
```

### Tests Cases

```
See above
```

### Data Structures

```
- Input:
  - Nested Array
- Output:
  - Array
```

### Algorithm

```   
- Create an empty array result[]
- Iterate through array
  - For each sub array
    - Add first element n times to result[]
```
