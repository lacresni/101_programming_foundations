# Double Doubles

A double number is a number with an even number of digits whose left-side digits are exactly the same as its right-side digits. For example, `44`, `3333`, `103103`, `7676` are all double numbers. `444`, `334433`, and `107` are not.

Write a method that returns 2 times the number provided as an argument, unless the argument is a double number; double numbers should be returned as-is.

Examples:

```ruby
twice(37) == 74
twice(44) == 44
twice(334433) == 668866
twice(444) == 888
twice(107) == 214
twice(103103) == 103103
twice(3333) == 3333
twice(7676) == 7676
twice(123_456_789_123_456_789) == 123_456_789_123_456_789
twice(5) == 10
```

Note: underscores are used for clarity above. Ruby lets you use underscores when writing long numbers; however, it does not print the underscores when printing long numbers. Don't be alarmed if you don't see the underscores when running your tests.

### Understand the problem

```
- Input:
  - An integer
- Output:
  - An integer
    - 2 times the number provided as an argument
    - argument if the argument is a double number
```

### Tests Cases

```
See above
```

### Data Structures

```
- Input:
  - An integer
- Intermediate:
  - A string for double check
- Output:
  - An integer
```

### Algorithm

```
- double? method to check if argument is a double
  - Transform integer to string
    - If string size is odd, return false
    - left-side = string[0, size/2]
    - right-side = string[size/2, size/2]
    - return left-side and right-side comparison
- Call double?(integer)
  - If true, return integer
  - Else, return integer * 2 
```

