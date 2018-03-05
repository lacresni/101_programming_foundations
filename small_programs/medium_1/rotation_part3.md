# Rotation (Part 3)

If you take a number like 735291, and rotate it to the left, you get 352917. If you now keep the first digit fixed in place, and rotate the remaining digits, you get 329175. Keep the first 2 digits fixed in place and rotate again to 321759. Keep the first 3 digits fixed in place and rotate again to get 321597. Finally, keep the first 4 digits fixed in place and rotate the final 2 digits to get 321579. The resulting number is called the maximum rotation of the original number.

Write a method that takes an integer as argument, and returns the maximum rotation of that argument. You can (and probably should) use the `rotate_rightmost_digits` method from the previous exercise.

Example:

```ruby
max_rotation(735291) == 321579
max_rotation(3) == 3
max_rotation(35) == 53
max_rotation(105) == 15 # the leading zero gets dropped
max_rotation(8_703_529_146) == 7_321_609_845
```



### Understand the problem

```
- Input:
  - An integer
- Output:
  - An integer (maximum rotation of argument)
```

### Tests Cases

```
See above
```

### Data Structures

```
- Input:
  - An integer
- Output:
  - An integer
```

### Algorithm

```
- Convert integer to string and compute its size 'n'
- rotated = input integer
- Iterate 'n' times
  - rotated = rotate_rightmost_digits(rotated, n-loop)
- return rotated
```



#### Further Exploration

Assume you do not have the `rotate_rightmost_digits` or `rotate_array` methods. How would you approach this problem?

* Try to find a pattern to break down the problem into smaller problems:
  * Keep `n` left digits and rotate right digits to the left that can de divided in:
    * Select rightmost digits part of an integer
    * Rotate this integer

Would your solution look different?

=> Difficult to answer after having implemented the LaunchSchool solution. But I guess my solution would have been quite similar acoording to the way I've described it above.

Does this 3 part approach make the problem easier to understand or harder?

=> In fact, it makes the problem easier to understand. However, here, we've discovered the solution in the opposite starting from the easier part to the more complex without having the initial problem in mind. So it appears to be strange solution at first but, we you think about the initial problem, it has been broken down to smaller problems in a similar way. 