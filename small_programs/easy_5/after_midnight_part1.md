# After Midnight (Part 1)

The time of day can be represented as the number of minutes before or after midnight. If the number of minutes is positive, the time is after midnight. If the number of minutes is negative, the time is before midnight.

Write a method that takes a time using this minute-based format and returns the time of day in 24 hour format (hh:mm). Your method should work with any integer input.

You may not use ruby's `Date` and `Time` classes.

Examples:

```ruby
time_of_day(0) == "00:00"
time_of_day(-3) == "23:57"
time_of_day(35) == "00:35"
time_of_day(-1437) == "00:03"
time_of_day(3000) == "02:00"
time_of_day(800) == "13:20"
time_of_day(-4231) == "01:29"
```



### Understand the problem

```
- Input:
  - A time as an integer
- Output:
  - A string representing the time of day in 24 hour format (hh:mm)
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
  - A string
```

### Abstraction

```
- Create a method to get time of day string from a positive integer
- Transform negative values into the positive equivalent
- Call the method used for positive numbers
```

### Algorithm

```
- Method to get time of day string from a positive integer:
  - Compute number of hours and remainding minutes from input number (use #divmod)
  - Format string properly (use format method)
- Deal with negative numbers
  - nb_minutes = 24*60 - integer.abs
  - get_time_of_day(nb_minutes)
```



#### Further Exploration

How would you approach this problem if you were allowed to use ruby's `Date` and `Time` classes? Suppose you also needed to consider the day of week? (Assume that `delta_minutes` is the number of minutes before or after midnight between Saturday and Sunday; in such a method, a delta_minutes value of -4231 would need to produce a return value of `Thursday 01:29`.)