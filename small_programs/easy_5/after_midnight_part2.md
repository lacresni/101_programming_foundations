# After Midnight (Part 2)

As seen in the previous exercise, the time of day can be represented as the number of minutes before or after midnight. If the number of minutes is positive, the time is after midnight. If the number of minutes is negative, the time is before midnight.

Write two methods that each take a time of day in 24 hour format, and return the number of minutes before and after midnight, respectively. Both methods should return a value in the range `0..1439`.

You may not use ruby's `Date` and `Time` methods.

Examples:

```ruby
after_midnight('00:00') == 0
before_midnight('00:00') == 0
after_midnight('12:34') == 754
before_midnight('12:34') == 686
after_midnight('24:00') == 0
before_midnight('24:00') == 0
```

Disregard Daylight Savings and Standard Time and other irregularities.

### Understand the problem

```
- Input:
  - A string representing time in 24 hour format
- Output:
  - An integer representing number of minutes before and after midnight
  -  Both methods should return a value in the range 0..1439
```

### Tests Cases

```
See above
```

### Data Structures

```
- Input:
  - A string representing time in 24 hour format
- Output:
  - An integer representing number of minutes before and after midnight
```

### Algorithm

```
- After midnight method:
  - Split string with ':' as separator
  - Gives an array with arr[0].to_i = hours and arr[1].to_i = minutes
  - Compute total number of minutes (hours * 60 + minutes)

- Before midnight method:
  - Split string with ':' as separator
  - Gives an array with arr[0].to_i = hours and arr[1].to_i = minutes
  - Compute total number of minutes 24*60 - (hours*60 + minutes)
```

#### Further Exploration

How would these methods change if you were allowed to use the `Date` and `Time` classes?