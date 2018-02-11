# Multiples of 3 and 5

Write a method that searches for all multiples of 3 or 5 that lie between 1 and some other number, and then computes the sum of those multiples. For instance, if the supplied number is `20`, the result should be `98` (3 + 5 + 6 + 9 + 10 + 12 + 15 + 18 + 20).

You may assume that the number passed in is an integer greater than 1.

Examples

```ruby
multisum(3) == 3
multisum(5) == 8
multisum(10) == 33
multisum(1000) == 234168
```



### Understand the problem

```
- Input:
  - An integer greater than 1
- Output:
  - Sum of all multiples of 3 or 5 between 1 and integer
```

### Tests Cases

```
See above
```

### Data Structures

```
- Input:
  - An integer greater than 1
- Intermediate:
  - Use a range (1..n)
- Output:
  - An integer returning the sum of all multiples of 3 or 5 between 1 and integer
```

### Algorithm

```
- Initialize sum = 0
- Iterate through the range from 1 to n
  - For each element in the range, 
    - add element to the sum if element % 3 == 0
    - add element to the sum if element % 5 == 0
```



#### Further Exploration

Investigate `Enumerable.inject` (also known as `Enumerable.reduce`), How might this method be useful in solving this problem? (Note that `Enumerable` methods are available when working with Arrays.) Try writing such a solution. Which is clearer? Which is more succinct?