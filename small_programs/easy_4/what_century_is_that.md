# What Century is That?

Write a method that takes a year as input and returns the century. The return value should be a string that begins with the century number, and ends with `st`, `nd`, `rd`, or `th` as appropriate for that number.

New centuries begin in years that end with `01`. So, the years 1901-2000 comprise the 20th century.

Examples:

```ruby
century(2000) == '20th'
century(2001) == '21st'
century(1965) == '20th'
century(256) == '3rd'
century(5) == '1st'
century(10103) == '102nd'
century(1052) == '11th'
century(1127) == '12th'
century(11201) == '113th'
```



### Understand the problem

```
- Input:
  - Year as an integer
- Output:
  - Century as a string
    - Begin with the century
      - New centuries begin in years that end with 01.
    - Ends with 'st', 'nd', 'rd', or 'th' as appropriate for that number
```

### Tests Cases

```ruby
century(2000) == '20th'
century(2001) == '21st'
century(1965) == '20th'
century(256) == '3rd'
century(5) == '1st'
century(10103) == '102nd'
century(1052) == '11th'
century(1127) == '12th'
century(11201) == '113th'
```

### Abstraction

```
- Create a method to determine century
  - return century as an integer
- Create a method to format string with appropriate end following these rules:
  - 11 => 'th'
  - 12 => 'th'
  - 13 => 'th'
  - Ends by 1 => 'st'
  - Ends by 2 => 'nd'
  - Ends by 3 => 'rd'
  - Ends by (4..0) => 'th'
```

### Data Structures

```
- Input:
  - An integer
- Output:
  - A string
```

### Algorithm

```
- Century method(year)
  - ((year - 1) / 100) + 1
- Format string method(century)
  - if century % 100 == 11 => 'th'
  - elsif century % 100 == 12 => 'th'
  - elsif century % 100 == 13 => 'th'
  - elsif century % 10 == 1 => 'st'
  - elsif century % 10 == 2 => 'nd'
  - elsif century % 10 == 3 => 'rd'
  - else => 'th' 
```
