# Grade book

Write a method that determines the mean (average) of the three scores passed to it, and returns the letter value associated with that grade.

| Numerical Score Letter | Grade |
| ---------------------- | ----- |
| 90 <= score <= 100     | 'A'   |
| 80 <= score < 90       | 'B'   |
| 70 <= score < 80       | 'C'   |
| 60 <= score < 70       | 'D'   |
| 0 <= score < 60        | 'F'   |

Tested values are all between 0 and 100. There is no need to check for negative values or values greater than 100.

Example:

```ruby
get_grade(95, 90, 93) == "A"
get_grade(50, 50, 95) == "D"
```



### Understand the problem

```
- Input:
  - 3 integers
- Output:
  - A string
    - Return the letter value associated with that grade (grade = average of the three scores passed as arguments)
```

### Tests Cases

```
See above
```

### Data Structures

```
- Input:
  - 3 integers
- Output:
  - A string
```

### Algorithm

```
- Compute average of three integers
  - (score1 + score2 + score3) / 3
- Translate the average into a grade by comparison
```



#### Further exploration

How would you handle this if there was a possibility of extra credit grades causing it to exceed 100 points?

=> reverse the case orders to have default value with grade 'A'

