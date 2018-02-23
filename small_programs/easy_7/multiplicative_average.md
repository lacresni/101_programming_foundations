# Multiplicative Average

Write a method that takes an Array of integers as input, multiplies all the numbers together, divides the result by the number of entries in the Array, and then prints the result rounded to 3 decimal places. Assume the array is non-empty.

Examples:

```ruby
show_multiplicative_average([3, 5])
# => The result is 7.500

show_multiplicative_average([6])
# => The result is 6.000

show_multiplicative_average([2, 5, 7, 11, 13, 17])
# => The result is 28361.667
```



### Understand the problem

```
- Input:
  - An Array of integers
  - Assume the array is non-empty
- Output:
  - An output
    - multiplies all the numbers together
    - divides the result by the number of entries in the Array
    - prints the result rounded to 3 decimal places
```

### Tests Cases

```
See above
```

### Data Structures

```
- Input:
  - An Array of integers
- Intermediate
  - A float
- Output:
  - String to output
```

### Algorithm

```
- Reduce array by multiplying all numbers together
- Divide result by number of elements in the array (casted to float)
- Display result
```

#### Further Exploration

What happens if you omit the call to `#to_f` on the first line of our method?

=> You won't have the decimal part of the division result. `/` will provide the entire value only. 