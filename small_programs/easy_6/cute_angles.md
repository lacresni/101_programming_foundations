# Cute angles

Write a method that takes a floating point number that represents an angle between 0 and 360 degrees and returns a String that represents that angle in degrees, minutes and seconds. You should use a degree symbol (`°`) to represent degrees, a single quote (`'`) to represent minutes, and a double quote (`"`) to represent seconds. A degree has 60 minutes, while a minute has 60 seconds.

Examples:

```ruby
dms(30) == %(30°00'00")
dms(76.73) == %(76°43'48")
dms(254.6) == %(254°36'00")
dms(93.034773) == %(93°02'05")
dms(0) == %(0°00'00")
dms(360) == %(360°00'00") || dms(360) == %(0°00'00")
```

Note: your results may differ slightly depending on how you round values, but should be within a second or two of the results shown.

You should use two digit numbers with leading zeros when formatting the minutes and seconds, e.g., `321°03'07"`.

You may use this constant to represent the degree symbol:

```ruby
DEGREE = "\xC2\xB0"
```



### Understand the problem

```
- Input:
  - A floating point number
    - represents an angle between 0 and 360 degrees
- Output:
  - A String
    - represents that angle in degrees, minutes and seconds
    - A degree has 60 minutes, while a minute has 60 seconds

    - use a degree symbol (°) to represent degrees, a single quote (') to represent minutes, and a double quote (") to represent seconds
    - use two digit numbers with leading zeros when formatting the minutes and seconds, e.g., 321°03'07"
```

### Tests Cases

```ruby
dms(30) == %(30°00'00")
dms(76.73) == %(76°43'48")
dms(254.6) == %(254°36'00")
dms(93.034773) == %(93°02'05")
dms(0) == %(0°00'00")
dms(360) == %(360°00'00") || dms(360) == %(0°00'00")
```

### Data Structures

```
- Input:
  - A floating point number
- Output:
  - A String
```

### Algorithm

```
- Convert input floating point number:
  - angle in degrees = nb.to_i
  - minutes = (nb - angle) * 60
  - seconds = (minutes - minutes.to_i) * 60
- Format string with format('%d°%02d\'%02d"',angle, minutes.to_i, seconds.to_i )
```
