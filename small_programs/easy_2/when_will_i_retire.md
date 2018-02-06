# When will I Retire?

Build a program that displays when the user will retire and how many years she has to work till retirement.

Example:

```
What is your age? 30
At what age would you like to retire? 70

It's 2016. You will retire in 2056.
You have only 40 years of work to go!
```



### Understand the problem

```
- Input:
  - Ask the user for his age
  - Ask the user when he would like to retire
- Output:
  - Display year when the user will retire
  - Display number of years left to work
```

### Tests Cases

```
What is your age? 30
At what age would you like to retire? 70

It's 2016. You will retire in 2056.
You have only 40 years of work to go!
```

### Data Structures

```
- Input:
  - age as an integer
  - age of retirement as an integer
- Output:
  - year of retirement as an integer
  - number of years left to work as an integer
```

### Algorithm

```
- Ask the user for his age
- Ask the user when he would like to retire
- Get current year
- Compute number of years left to work (age of retirement - current age)
- Compute year of retirement (current year + number of years left to work)
- Display year when the user will retire
- Display number of years left to work
```
