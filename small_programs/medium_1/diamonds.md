# Diamonds!

Write a method that displays a 4-pointed diamond in an n x n grid, where `n` is an odd integer that is supplied as an argument to the method. You may assume that the argument will always be an odd integer.

Examples

```ruby
diamond(1)

*
```

```ruby
diamond(3)

 *
***
 *
```

```ruby
diamond(9)

    *
   ***
  *****
 *******
*********
 *******
  *****
   ***
    *
```


### Understand the problem

```
- Input:
  - An odd integer
- Output:
  - A 4-pointed diamond displayed in an n x n grid
```

### Tests Cases

```
See above
```

### Data Structures

```
- Input:
  - An odd integer
- Intermediate:
  - A nested array
    - Each element contains the representation of a line
      - 0 for space and 1 for '*'
- Output:
  - Diplay lines
```

### Algorithm

```
- Create an array containing 'n' empty arrays

- First line arr[0] is 'n/2' space then 1 '*'
- Second line arr[1] is 'n/2 - 1' space then 3 '*'
- Third line arr[2] is 'n/2 - 2' space then 5 '*'
- ...
- Middle line is 0 spaces then 'n' '*'
- ...
- Third line before last line is 'n/2 - 2' space then 5 '*'  => arr[-3] = arr[2]
- Before last line is 'n/2 - 1' space then 3 '*'  => arr[-2] = arr[1]
- Last line is 'n/2' space then 1 '*'    => arr[-1] = arr[0]
```



#### Further Exploration

Try modifying your solution or our solution so it prints only the outline of the diamond:

```ruby
diamond(5)

  *
 * *
*   *
 * *
  *
```

