# Always Return Negative

Write a method that takes a number as an argument. If the argument is a positive number, return the negative of that number. If the number is 0 or negative, return the original number.

Examples;

```ruby
negative(5) == -5
negative(-3) == -3
negative(0) == 0      # There's no such thing as -0 in ruby
```



### Understand the problem

```
- Input:
  - An integer
- Output:
  - An integer:
    - If the argument is a positive number, return the negative of that number
    - If the number is 0 or negative, return the original number
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
- If number is positive
  - Return number * (-1)
- else return number
```



#### Further Exploration

There is an even shorter way to write this but it isn't as immediately intuitive.

```ruby
def negative(number)
  -number.abs
end
```

This works by flipping the problem on the head. It straightaway converts it to a positive number with `Numeric#abs` and then prepends it with a negative operator to make it negative. `abs` returns the absolute value of a number (the non-negative value of a number without regard to its sign).

So instead of operating by checking the value and proceeding based on the evaluation, the opposite can be applied by stripping it of its sign, then giving it the negative sign.

This is clearly shorter. However is it superior?