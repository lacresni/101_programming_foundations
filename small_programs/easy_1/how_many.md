# How Many?

Write a method that counts the number of occurrences of each element in a given array.

```ruby
vehicles = ['car', 'car', 'truck', 'car', 'SUV', 'truck', 'motorcycle', 'motorcycle', 'car', 'truck']

count_occurrences(vehicles)
```

Once counted, print each element alongside the number of occurrences.

Expected output:

```
car => 4
truck => 3
SUV => 1
motorcycle => 2
```



### Understand the problem

```
- Input:
  - an array of strings
- Output:
  - each 'unique' element
  - number of occurrences of this element
```

### Tests Cases

```ruby
vehicles = ['car', 'car', 'truck', 'car', 'SUV', 'truck', 'motorcycle', 'motorcycle', 'car', 'truck']

count_occurrences(vehicles)
```

Expected output:

```
car => 4
truck => 3
SUV => 1
motorcycle => 2
```

### Data Structures

```
- Input:
  - an array of strings
- Output:
  - Use a hash to store elements as key and number of occurrences as values
```

### Algorithm

```
- Initialize an empty hash with default value of 0
- For each element in the array, 
  - add it to the hash 
  - increment its value
- Iterate through the hash
  - print each element alongside the number of occurrences.
```
