# Leap Years (Part 2)

A continuation of the previous exercise.

The British Empire adopted the Gregorian Calendar in 1752, which was a leap year. Prior to 1752, the Julian Calendar was used. Under the Julian Calendar, leap years occur in any year that is evenly divisible by 4.

Using this information, update the method from the previous exercise to determine leap years both before and after 1752.

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
leap_year?(1700) == true
leap_year?(1) == false
leap_year?(100) == true
leap_year?(400) == true
```



### Understand the problem

```
- Input:
  - Year as a positive integer
- Output:
  - Boolean
    - true if year is leap
      - Before 1752
        - leap years occur in any year that is evenly divisible by 4
      - After 1752
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
  - IF year % 100 == 0 && year > 1752
    - IF year % 400 == 0
      - is_leap = TRUE
    - END
  - ELSE
    - is_leap = TRUE
  - END
- END
```



#### Further Exploration

Find a web page that talks about leap years or the different calendar systems, and talk about the interesting information you learned. For instance, how was the change from the Julian calendar to the Gregorian calendar handled in your ancestral lands? Do they even use these calendar systems? If you live someplace that doesn't use the Gregorian calendar, tell us about your calendar system.

In France, transition between both calendars occurred on december 9th 1582. The next day became december 20th 1582. However, some provinces were not part of France as that time. See wikipedia article in French [here](https://fr.wikipedia.org/wiki/Passage_du_calendrier_julien_au_calendrier_gr%C3%A9gorien).