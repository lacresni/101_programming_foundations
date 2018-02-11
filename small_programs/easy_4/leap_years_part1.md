# Leap Years (Part 1)

In the modern era under the Gregorian Calendar, leap years occur in every year that is evenly divisible by 4, unless the year is also divisible by 100. If the year is evenly divisible by 100, then it is not a leap year unless the year is evenly divisible by 400.

Assume this rule is good for any year greater than year 0. Write a method that takes any year greater than 0 as input, and returns true if the year is a leap year, or false if it is not a leap year.

```ruby
leap_year?(2016) == true
leap_year?(2015) == false
leap_year?(2100) == false
leap_year?(2400) == true
leap_year?(240000) == true
leap_year?(240001) == false
leap_year?(2000) == true
leap_year?(1900) == false
leap_year?(1752) == true
leap_year?(1700) == false
leap_year?(1) == false
leap_year?(100) == false
leap_year?(400) == true
```



### Understand the problem

```
- Input:
  - Year as a positive integer
- Output:
  - Boolean
    - true if year is leap
      - Leap years occur in every year that is evenly divisible by 4, unless the year is also divisible by 100. 
      - If the year is evenly divisible by 100, then it is not a leap year unless the year is evenly divisible by 400
    - false otherwise
```

### Tests Cases

```
See above
```

### Data Structures

```
- Input:
  - A positive integer
- Output:
  - Boolean
```

### Algorithm

```
- is_leap = FALSE
- IF year % 4 == 0
  - IF year % 100 == 0
    - IF year % 400 == 0
      - is_leap = TRUE
    - END
  - ELSE
    - is_leap = TRUE
  - END
- END
```

**Easier solution**

```ruby
def is_leap?(year)
  if year % 400
    true
  elsif year % 100
    false
  else
    year % 4 == 0
  end
end
```

