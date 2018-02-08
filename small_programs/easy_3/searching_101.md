# Searching 101

Write a program that solicits 6 numbers from the user, then prints a message that describes whether or not the 6th number appears amongst the first 5 numbers.

Examples:

```
==> Enter the 1st number:
25
==> Enter the 2nd number:
15
==> Enter the 3rd number:
20
==> Enter the 4th number:
17
==> Enter the 5th number:
23
==> Enter the last number:
17
The number 17 appears in [25, 15, 20, 17, 23].


==> Enter the 1st number:
25
==> Enter the 2nd number:
15
==> Enter the 3rd number:
20
==> Enter the 4th number:
17
==> Enter the 5th number:
23
==> Enter the last number:
18
The number 18 does not appear in [25, 15, 20, 17, 23].
```



### Understand the problem

```
- Input:
  - Ask the user for 6 numbers
- Output:
  - Prints a message that describes whether or not the 6th number appears amongst the first 5 numbers.
```

### Tests Cases

```
See above
```

### Data Structures

```
- Input:
  - 6 integers
- Output:
  - Store first 5 integers into an array
  - Returns a string as a result
```

### Algorithm

```
- Ask the user for 5 numbers
  - Store each number into an array
- Ask the user for a number
  - Check if number is included in the array
- Diplay result
```
